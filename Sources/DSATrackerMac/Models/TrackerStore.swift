import Foundation
import Combine
import Darwin
#if canImport(WidgetKit)
import WidgetKit
#endif

@MainActor
public final class TrackerStore: ObservableObject {
    @Published public private(set) var problems: [Problem] = []
    @Published public var selectedTopic: String = "All"

    public let storageURL: URL

    nonisolated public static var defaultStorageURL: URL {
        let homeDir = FileManager.default.homeDirectoryForCurrentUser
        let widgetContainer = homeDir
            .appendingPathComponent("Library/Containers/com.dsatracker.mac.widget/Data/Library/Application Support/DSATracker", isDirectory: true)
        let widgetFileURL = widgetContainer.appendingPathComponent("problems.json", isDirectory: false)

        let standardAppSupport = FileManager.default.urls(
            for: .applicationSupportDirectory,
            in: .userDomainMask
        ).first ?? FileManager.default.temporaryDirectory
        let standardFolder = standardAppSupport.appendingPathComponent("DSATracker", isDirectory: true)
        let standardFileURL = standardFolder.appendingPathComponent("problems.json", isDirectory: false)

        if standardFileURL.path.contains("com.dsatracker.mac.widget") {
            return standardFileURL
        }

        if FileManager.default.fileExists(atPath: widgetContainer.deletingLastPathComponent().path) {
            return widgetFileURL
        }

        return standardFileURL
    }

    nonisolated public static var selectedTopicURL: URL {
        defaultStorageURL.deletingLastPathComponent().appendingPathComponent("selected_topic.txt")
    }

    nonisolated public static func loadSelectedTopic(from url: URL = selectedTopicURL) -> String {
        if let data = try? Data(contentsOf: url),
           let str = String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines),
           let topic = (["All"] + DSATopics.allTopics).first(where: { $0.caseInsensitiveCompare(str) == .orderedSame }) {
            return topic
        }
        return "All"
    }

    nonisolated public static func saveSelectedTopic(_ topic: String) throws {
        let url = selectedTopicURL
        try writeState(topic, to: url)
    }

    nonisolated public static var isPickingTopicURL: URL {
        defaultStorageURL.deletingLastPathComponent().appendingPathComponent("is_picking_topic.txt")
    }

    nonisolated public static func loadIsPickingTopic() -> Bool {
        let url = isPickingTopicURL
        if let data = try? Data(contentsOf: url),
           let str = String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines) {
            return str == "1"
        }
        return false
    }

    nonisolated public static func saveIsPickingTopic(_ value: Bool) throws {
        let url = isPickingTopicURL
        try writeState(value ? "1" : "0", to: url)
    }

    nonisolated public static var currentPageURL: URL {
        defaultStorageURL.deletingLastPathComponent().appendingPathComponent("current_page.txt")
    }

    nonisolated public static func loadCurrentPage() -> Int {
        let url = currentPageURL
        if let data = try? Data(contentsOf: url),
           let str = String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines),
           let page = Int(str) {
            return max(0, page)
        }
        return 0
    }

    nonisolated public static func saveCurrentPage(_ page: Int) throws {
        let url = currentPageURL
        try writeState("\(max(0, page))", to: url)
    }

    nonisolated static func writeState(_ value: String, to url: URL) throws {
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(),
                                               withIntermediateDirectories: true)
        try Data(value.utf8).write(to: url, options: .atomic)
    }

    nonisolated public static func loadProblems(from url: URL = defaultStorageURL) -> [Problem] {
        (try? readProblems(from: url)) ?? StarterProblems.initialList
    }

    // Mutations use the throwing reader so an unreadable save is never replaced
    // by fresh progress. Timeline previews can still display the curriculum.
    nonisolated static func readProblems(from url: URL) throws -> [Problem] {
        let codeList = StarterProblems.initialList
        guard FileManager.default.fileExists(atPath: url.path) else { return codeList }
        let savedList = try JSONDecoder().decode([Problem].self, from: Data(contentsOf: url))
        let byID = Dictionary(savedList.map { ($0.id, $0.isCompleted) }, uniquingKeysWith: { $0 || $1 })
        // Current saves already have stable IDs. Only build migration indexes
        // when the curriculum contains an ID absent from the saved file.
        if codeList.allSatisfy({ byID[$0.id] != nil }) {
            return codeList.map { item in
                var copy = item
                copy.isCompleted = byID[item.id]!
                return copy
            }
        }
        let legacy = Dictionary(savedList.map { ($0.topic.lowercased() + "\u{0}" + $0.title.lowercased(), $0.isCompleted) }, uniquingKeysWith: { $0 || $1 })
        let savedByTitle = Dictionary(grouping: savedList, by: { $0.title.lowercased() })
        let currentByTitle = Dictionary(grouping: codeList, by: { $0.title.lowercased() })
        return codeList.map { item in
            var copy = item
            let title = item.title.lowercased()
            // Older saves used random IDs. A unique title still identifies a
            // problem after a curriculum topic is renamed or reorganized.
            let movedProgress = currentByTitle[title]?.count == 1 && savedByTitle[title]?.count == 1
                ? savedByTitle[title]?.first?.isCompleted : nil
            copy.isCompleted = byID[item.id] ?? legacy[item.topic.lowercased() + "\u{0}" + title] ?? movedProgress ?? false
            return copy
        }
    }

    public init(storageURL: URL = TrackerStore.defaultStorageURL) throws {
        self.storageURL = storageURL
        self.selectedTopic = TrackerStore.loadSelectedTopic(from: storageURL.deletingLastPathComponent().appendingPathComponent("selected_topic.txt"))
        try load()
    }

    // MARK: - Computed Properties

    public var totalCount: Int {
        problems.count
    }

    public var completedCount: Int {
        problems.filter { $0.isCompleted }.count
    }

    public var overallProgress: Double {
        guard totalCount > 0 else { return 0.0 }
        return Double(completedCount) / Double(totalCount)
    }

    public var overallProgressPercentage: Int {
        Int((overallProgress * 100).rounded())
    }

    public var filteredProblems: [Problem] {
        if selectedTopic == "All" {
            return problems.sorted { $0.priority < $1.priority }
        } else {
            return problems
                .filter { $0.topic.caseInsensitiveCompare(selectedTopic) == .orderedSame }
                .sorted { $0.priority < $1.priority }
        }
    }

    // MARK: - Actions

    public func toggleCompletion(for id: UUID) throws {
        self.problems = try Self.toggleCompletion(at: storageURL, for: id)
        #if canImport(WidgetKit)
        WidgetCenter.shared.reloadTimelines(ofKind: "DSATracker")
        #endif
    }

    /// Widget intents do not need an observable store or its initial disk read.
    @discardableResult
    nonisolated static func toggleCompletion(at url: URL, for id: UUID) throws -> [Problem] {
        try updateProblems(at: url) { problems in
            guard let index = problems.firstIndex(where: { $0.id == id }) else {
                throw StoreError.unknownProblem
            }
            problems[index].isCompleted.toggle()
        }
    }

    // Curriculum changes belong in StarterProblems; runtime add/delete helpers
    // used to report success even though the next load silently discarded them.
    public func resetAllProgress() throws {
        try update { problems in
            for i in problems.indices { problems[i].isCompleted = false }
        }
    }

    // MARK: - Persistence

    public func load() throws {
        self.problems = try TrackerStore.readProblems(from: storageURL)
    }

    private func update(_ change: (inout [Problem]) throws -> Void) throws {
        // Publish only after the write succeeds, so failures do not leave the
        // in-memory checkmarks different from the saved state.
        self.problems = try Self.updateProblems(at: storageURL, change: change)
        #if canImport(WidgetKit)
        WidgetCenter.shared.reloadAllTimelines()
        #endif
    }

    enum StoreError: LocalizedError {
        case unknownProblem

        var errorDescription: String? {
            "This problem is no longer in the roadmap. Refresh the widget and try again."
        }
    }

    nonisolated static func updateProblems(at url: URL, change: (inout [Problem]) throws -> Void) throws -> [Problem] {
        try FileManager.default.createDirectory(at: url.deletingLastPathComponent(),
                                               withIntermediateDirectories: true)
        // Atomic replacement protects readers, but does not serialize concurrent
        // read/modify/write operations. Lock a separate, stable inode instead.
        let lockURL = url.appendingPathExtension("lock")
        let descriptor = open(lockURL.path, O_CREAT | O_RDWR, S_IRUSR | S_IWUSR)
        guard descriptor >= 0 else { throw POSIXError(POSIXErrorCode(rawValue: errno) ?? .EIO) }
        defer { close(descriptor) }
        while flock(descriptor, LOCK_EX) != 0 {
            if errno != EINTR { throw POSIXError(POSIXErrorCode(rawValue: errno) ?? .EIO) }
        }
        defer { flock(descriptor, LOCK_UN) }

        var problems = try readProblems(from: url)
        try change(&problems)
        let encoder = JSONEncoder()
        try encoder.encode(problems).write(to: url, options: .atomic)
        return problems
    }
}

/// Shared page math for timeline rendering and navigation intents.
public struct ProblemPage {
    public let index: Int
    public let totalPages: Int
    public let problems: [Problem]

    public init(problems: [Problem], requestedPage: Int, pageSize: Int) {
        let size = max(1, pageSize)
        totalPages = max(1, problems.count / size + (problems.count % size == 0 ? 0 : 1))
        index = min(max(0, requestedPage), totalPages - 1)
        self.problems = Array(problems.dropFirst(index * size).prefix(size))
    }
}
