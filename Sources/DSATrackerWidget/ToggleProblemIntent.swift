import Foundation
import AppIntents
import WidgetKit



// MARK: - Toggle Topic Picker Mode (••• Three Dots Button)

public struct ToggleTopicPickerIntent: AppIntent {
    public static var title: LocalizedStringResource = "Toggle Topic Menu"
    public static var description = IntentDescription("Opens or closes the topic list on the widget.")
    public static var openAppWhenRun: Bool = false

    public init() {}

    @MainActor
    public func perform() async throws -> some IntentResult {
        let current = TrackerStore.loadIsPickingTopic()
        try TrackerStore.saveIsPickingTopic(!current)
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}

// MARK: - Select Specific Topic Intent

public struct SelectTopicIntent: AppIntent {
    public static var title: LocalizedStringResource = "Select Topic"
    public static var description = IntentDescription("Selects a specific topic from the widget menu.")
    public static var openAppWhenRun: Bool = false

    @Parameter(title: "Topic")
    public var topic: String

    public init() {}

    public init(topic: String) {
        self.topic = topic
    }

    @MainActor
    public func perform() async throws -> some IntentResult {
        try TrackerStore.saveSelectedTopic(topic)
        try TrackerStore.saveCurrentPage(0)
        try TrackerStore.saveIsPickingTopic(false)
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}

// MARK: - Change Page Intent (Pagination)

public struct ChangePageIntent: AppIntent {
    public static var title: LocalizedStringResource = "Change Page"
    public static var description = IntentDescription("Navigates to the next or previous page of questions.")
    public static var openAppWhenRun: Bool = false

    @Parameter(title: "Forward")
    public var forward: Bool

    @Parameter(title: "Page Size", default: 6)
    public var pageSize: Int

    public init() {
        self.forward = true
        self.pageSize = 6
    }

    public init(forward: Bool, pageSize: Int = 6) {
        self.forward = forward
        self.pageSize = pageSize
    }

    @MainActor
    public func perform() async throws -> some IntentResult {
        let page = TrackerStore.loadCurrentPage()
        let topic = TrackerStore.loadSelectedTopic()
        let problems = try TrackerStore.readProblems(from: TrackerStore.defaultStorageURL)
            .filter { topic == "All" || $0.topic.caseInsensitiveCompare(topic) == .orderedSame }
        let current = ProblemPage(problems: problems, requestedPage: page, pageSize: pageSize)
        let next = forward ? min(current.index + 1, current.totalPages - 1) : max(0, current.index - 1)
        try TrackerStore.saveCurrentPage(next)
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}

// MARK: - Cycle Topic Intent (In-Widget < / > Arrows)

public struct CycleTopicIntent: AppIntent {
    public static var title: LocalizedStringResource = "Cycle DSA Topic"
    public static var description = IntentDescription("Cycles to the next or previous topic directly on the widget.")
    public static var openAppWhenRun: Bool = false

    @Parameter(title: "Forward")
    public var forward: Bool

    public init() {
        self.forward = true
    }

    public init(forward: Bool) {
        self.forward = forward
    }

    @MainActor
    public func perform() async throws -> some IntentResult {
        let allTopics = ["All"] + DSATopics.allTopics
        let current = TrackerStore.loadSelectedTopic()
        let currentIndex = allTopics.firstIndex(where: { $0.caseInsensitiveCompare(current) == .orderedSame }) ?? 0
        let nextIndex: Int
        if forward {
            nextIndex = (currentIndex + 1) % allTopics.count
        } else {
            nextIndex = (currentIndex - 1 + allTopics.count) % allTopics.count
        }
        let nextTopic = allTopics[nextIndex]
        try TrackerStore.saveSelectedTopic(nextTopic)
        try TrackerStore.saveCurrentPage(0)
        try TrackerStore.saveIsPickingTopic(false)
        WidgetCenter.shared.reloadAllTimelines()
        return .result()
    }
}

// MARK: - Toggle Problem Completion Intent

public struct ToggleProblemIntent: AppIntent {
    public static var title: LocalizedStringResource = "Toggle DSA Problem Completion"
    public static var description = IntentDescription("Toggles the completion status of a DSA problem.")
    public static var openAppWhenRun: Bool = false

    @Parameter(title: "Problem ID")
    public var problemId: String

    public init() {}

    public init(problemId: String) {
        self.problemId = problemId
    }

    public func perform() async throws -> some IntentResult {
        guard let uuid = UUID(uuidString: problemId) else {
            throw TrackerStore.StoreError.unknownProblem
        }

        try TrackerStore.toggleCompletion(at: TrackerStore.defaultStorageURL, for: uuid)
        // WidgetKit reloads the timeline when perform returns. Avoid requesting
        // another reload while that interaction refresh is already pending.

        return .result()
    }
}
