import XCTest
@testable import DSATrackerMac

final class TrackerStoreTests: XCTestCase {
    private func temporaryURL() throws -> URL {
        let folder = FileManager.default.temporaryDirectory.appendingPathComponent(UUID().uuidString)
        addTeardownBlock { try? FileManager.default.removeItem(at: folder) }
        return folder.appendingPathComponent("nested/progress.json")
    }

    func testCurriculumIntegrity() {
        let problems = StarterProblems.initialList
        XCTAssertEqual(problems.count, 300)
        XCTAssertEqual(Set(problems.map(\.id)).count, 300)
        XCTAssertEqual(problems.map(\.priority), Array(1...300))
        XCTAssertEqual(Set(problems.map(\.topic)), Set(DSATopics.allTopics))
        XCTAssertTrue(problems.allSatisfy { $0.url.scheme == "https" && $0.url.host != nil })
    }

    func testStableCurriculumID() {
        // Known digest of topic + NUL + title, independent of process UUID state.
        XCTAssertEqual(StarterProblems.initialList[0].id.uuidString, "EA7C6158-C064-5B95-B6FE-12AABFB2E830")
    }

    @MainActor
    func testCompletionSurvivesReloadAndStaleStore() throws {
        let url = try temporaryURL()
        let first = try TrackerStore(storageURL: url)
        let stale = try TrackerStore(storageURL: url)
        let ids = first.problems.prefix(2).map(\.id)
        try first.toggleCompletion(for: ids[0])
        try stale.toggleCompletion(for: ids[1])
        let reloaded = try TrackerStore(storageURL: url)
        XCTAssertEqual(reloaded.completedCount, 2)
        try reloaded.toggleCompletion(for: ids[0])
        XCTAssertEqual(try TrackerStore(storageURL: url).completedCount, 1)
    }

    func testLegacyRandomIDsMigrateWithoutLosingProgress() throws {
        let url = try temporaryURL()
        let item = StarterProblems.initialList[0]
        let old = Problem(title: item.title, topic: item.topic, subtopic: item.subtopic,
                          difficulty: item.difficulty, platform: item.platform, url: item.url,
                          isCompleted: true, priority: item.priority)
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
        try JSONEncoder().encode([old]).write(to: url)
        let loaded = try TrackerStore.readProblems(from: url)
        XCTAssertEqual(loaded[0].id, item.id)
        XCTAssertTrue(loaded[0].isCompleted)
        XCTAssertEqual(loaded.count, 300)
    }

    @MainActor
    func testCorruptSaveIsNotOverwrittenOnLoad() throws {
        let url = try temporaryURL()
        try TrackerStore.writeState("broken json", to: url)
        XCTAssertThrowsError(try TrackerStore(storageURL: url))
        XCTAssertEqual(try String(contentsOf: url), "broken json")
    }

    @MainActor
    func testLoadDoesNotCreateOrRewriteSave() throws {
        let url = try temporaryURL()
        _ = try TrackerStore(storageURL: url)
        XCTAssertFalse(FileManager.default.fileExists(atPath: url.path))
    }

    func testFirstUseStateWriteCreatesDirectory() throws {
        let url = try temporaryURL()
        try TrackerStore.writeState("Arrays", to: url)
        XCTAssertEqual(try String(contentsOf: url), "Arrays")
    }

    func testInvalidAndCaseInsensitiveSavedTopics() throws {
        let url = try temporaryURL()
        try TrackerStore.writeState("Removed Topic", to: url)
        XCTAssertEqual(TrackerStore.loadSelectedTopic(from: url), "All")
        try TrackerStore.writeState("  arrays\n", to: url)
        XCTAssertEqual(TrackerStore.loadSelectedTopic(from: url), "Arrays")
    }

    func testExtraLargeClampsPageAfterSwitchingFromLarge() {
        let problems = StarterProblems.initialList
        let large = ProblemPage(problems: problems, requestedPage: 49, pageSize: 6)
        XCTAssertEqual(large.totalPages, 50)
        let xl = ProblemPage(problems: problems, requestedPage: large.index, pageSize: 12)
        XCTAssertEqual(xl.index, 24)
        XCTAssertEqual(xl.totalPages, 25)
        XCTAssertEqual(xl.problems.map(\.priority), Array(289...300))
    }

    func testPagingEmptyNegativeAndExtremeValues() {
        let empty = ProblemPage(problems: [], requestedPage: Int.max, pageSize: 12)
        XCTAssertEqual(empty.index, 0)
        XCTAssertEqual(empty.totalPages, 1)
        XCTAssertTrue(empty.problems.isEmpty)
        let first = ProblemPage(problems: StarterProblems.initialList, requestedPage: -1, pageSize: 6)
        XCTAssertEqual(first.problems.map(\.priority), Array(1...6))
        let last = ProblemPage(problems: Array(StarterProblems.initialList.prefix(13)), requestedPage: Int.max, pageSize: 12)
        XCTAssertEqual(last.problems.map(\.priority), [13])
    }
    @MainActor
    func testCustomStorageAlsoUsesItsOwnTopic() throws {
        let url = try temporaryURL()
        for topic in ["Arrays", "Trie"] {
            try TrackerStore.writeState(topic, to: url.deletingLastPathComponent().appendingPathComponent("selected_topic.txt"))
            XCTAssertEqual(try TrackerStore(storageURL: url).selectedTopic, topic)
        }
    }

    func testLegacyProgressSurvivesTopicReorganization() throws {
        let url = try temporaryURL()
        var old = StarterProblems.initialList[0]
        old = Problem(title: old.title, topic: "Old Arrays Topic", subtopic: old.subtopic,
                      difficulty: old.difficulty, platform: old.platform, url: old.url,
                      isCompleted: true, priority: old.priority)
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
        try JSONEncoder().encode([old]).write(to: url)
        XCTAssertTrue(try TrackerStore.readProblems(from: url)[0].isCompleted)
    }

    @MainActor
    func testResetDoesNotDestroySaveCorruptedAfterInitialization() throws {
        let url = try temporaryURL()
        let store = try TrackerStore(storageURL: url)
        try TrackerStore.writeState("unreadable save", to: url)
        XCTAssertThrowsError(try store.resetAllProgress())
        XCTAssertEqual(try String(contentsOf: url), "unreadable save")
    }

    func testConcurrentProgressUpdatesDoNotLoseCheckmarks() throws {
        let url = try temporaryURL()
        DispatchQueue.concurrentPerform(iterations: 20) { index in
            do {
                _ = try TrackerStore.updateProblems(at: url) { problems in
                    Thread.sleep(forTimeInterval: 0.002)
                    problems[index].isCompleted = true
                }
            } catch {
                XCTFail("Concurrent write failed: \(error)")
            }
        }
        XCTAssertEqual(try TrackerStore.readProblems(from: url).filter(\.isCompleted).count, 20)
    }

    @MainActor
    func testFailedMutationDoesNotChangePublishedOrSavedProgress() throws {
        let url = try temporaryURL()
        let store = try TrackerStore(storageURL: url)
        let original = store.problems
        XCTAssertThrowsError(try store.toggleCompletion(for: UUID()))
        XCTAssertEqual(store.problems, original)
        XCTAssertFalse(FileManager.default.fileExists(atPath: url.path))
    }

    func testRapidCheckboxTogglesPersistEveryChange() throws {
        let url = try temporaryURL()
        let id = StarterProblems.initialList[0].id
        DispatchQueue.concurrentPerform(iterations: 21) { _ in
            do { try TrackerStore.toggleCompletion(at: url, for: id) }
            catch { XCTFail("Toggle failed: \(error)") }
        }
        XCTAssertTrue(try TrackerStore.readProblems(from: url)[0].isCompleted)
        try TrackerStore.toggleCompletion(at: url, for: id)
        XCTAssertFalse(try TrackerStore.readProblems(from: url)[0].isCompleted)
    }

    func testFastReadStillUsesCurrentCurriculumMetadata() throws {
        let url = try temporaryURL()
        var old = StarterProblems.initialList
        old[0].title = "Outdated title"
        old[0].isCompleted = true
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(), withIntermediateDirectories: true)
        try JSONEncoder().encode(old).write(to: url)
        let loaded = try TrackerStore.readProblems(from: url)
        XCTAssertEqual(loaded[0].title, StarterProblems.initialList[0].title)
        XCTAssertTrue(loaded[0].isCompleted)
    }

}
