import WidgetKit
import SwiftUI
import AppIntents

// MARK: - Timeline Entry

public struct DSAWidgetEntry: TimelineEntry {
    public let date: Date
    public let pagedProblems: [Problem]
    public let filteredProblems: [Problem]
    public let allProblems: [Problem]
    public let completedCount: Int
    public let totalCount: Int
    public let progress: Double
    public let percentage: Int
    public let selectedTopic: String
    public let topicCompletedCount: Int
    public let topicTotalCount: Int
    public let topicProgress: Double
    public let topicPercentage: Int
    public let currentPage: Int
    public let totalPages: Int
    public let isPickingTopic: Bool
}

// MARK: - Timeline Provider (StaticConfiguration)

public struct DSATimelineProvider: TimelineProvider {
    public typealias Entry = DSAWidgetEntry

    public init() {}

    public func placeholder(in context: Context) -> DSAWidgetEntry {
        makeEntry(from: StarterProblems.initialList, topic: "All", pageSize: context.family == .systemExtraLarge ? 12 : 6, isPicking: false)
    }

    public func getSnapshot(in context: Context, completion: @escaping (DSAWidgetEntry) -> Void) {
        let problems = TrackerStore.loadProblems()
        let topic = TrackerStore.loadSelectedTopic()
        let isPicking = TrackerStore.loadIsPickingTopic()
        completion(makeEntry(from: problems, topic: topic, pageSize: context.family == .systemExtraLarge ? 12 : 6, isPicking: isPicking))
    }

    public func getTimeline(in context: Context, completion: @escaping (Timeline<DSAWidgetEntry>) -> Void) {
        let problems = TrackerStore.loadProblems()
        let topic = TrackerStore.loadSelectedTopic()
        let isPicking = TrackerStore.loadIsPickingTopic()
        let entry = makeEntry(from: problems, topic: topic, pageSize: context.family == .systemExtraLarge ? 12 : 6, isPicking: isPicking)
        let nextUpdate = Calendar.current.date(byAdding: .minute, value: 30, to: Date()) ?? Date()
        completion(Timeline(entries: [entry], policy: .after(nextUpdate)))
    }

    private func makeEntry(from allProblems: [Problem], topic: String, pageSize: Int, isPicking: Bool) -> DSAWidgetEntry {
        let filtered: [Problem]
        if topic == "All" {
            filtered = allProblems.sorted { $0.priority < $1.priority }
        } else {
            filtered = allProblems
                .filter { $0.topic.caseInsensitiveCompare(topic) == .orderedSame }
                .sorted { $0.priority < $1.priority }
        }

        let total = allProblems.count
        let completed = allProblems.filter { $0.isCompleted }.count
        let progress = total > 0 ? Double(completed) / Double(total) : 0.0
        let percentage = Int((progress * 100).rounded())

        let topicCompleted = filtered.filter { $0.isCompleted }.count
        let topicTotal = filtered.count
        let topicProgress = topicTotal > 0 ? Double(topicCompleted) / Double(topicTotal) : 0.0
        let topicPercentage = Int((topicProgress * 100).rounded())

        let page = ProblemPage(problems: filtered, requestedPage: TrackerStore.loadCurrentPage(), pageSize: pageSize)

        return DSAWidgetEntry(
            date: Date(),
            pagedProblems: page.problems,
            filteredProblems: filtered,
            allProblems: allProblems,
            completedCount: completed,
            totalCount: total,
            progress: progress,
            percentage: percentage,
            selectedTopic: topic,
            topicCompletedCount: topicCompleted,
            topicTotalCount: topicTotal,
            topicProgress: topicProgress,
            topicPercentage: topicPercentage,
            currentPage: page.index,
            totalPages: page.totalPages,
            isPickingTopic: isPicking
        )
    }
}


// MARK: - Widget View

public struct DSATrackerWidgetEntryView: View {
    @Environment(\.widgetFamily) var family
    var entry: DSAWidgetEntry

    public var body: some View {
        Group {
            if entry.isPickingTopic {
                topicPickerView
            } else {
                if family == .systemExtraLarge {
                    extraLargeLayout
                } else {
                    largeLayout
                }
            }
        }
        .unredacted()
    }

    // MARK: - Topic Picker Grid View (Shown on ••• Tap)

    private var topicPickerView: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text("Select Category")
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                    .foregroundColor(.primary)

                Spacer()

                Button(intent: ToggleTopicPickerIntent()) {
                    HStack(spacing: 3) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                        Text("Done")
                            .font(.system(size: 11, weight: .semibold))
                            .foregroundColor(.secondary)
                    }
                    .padding(4)
                    .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
            }

            Divider()

            let allOptions = ["All"] + DSATopics.allTopics
            let columns = [
                GridItem(.flexible(), spacing: 4),
                GridItem(.flexible(), spacing: 4),
                GridItem(.flexible(), spacing: 4)
            ]

            LazyVGrid(columns: columns, spacing: 4) {
                ForEach(allOptions, id: \.self) { topic in
                    let isCurrent = topic.caseInsensitiveCompare(entry.selectedTopic) == .orderedSame
                    Button(intent: SelectTopicIntent(topic: topic)) {
                        Text(shortTopicName(topic))
                            .font(.system(size: 9, weight: isCurrent ? .bold : .medium))
                            .lineLimit(1)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 3)
                            .padding(.horizontal, 4)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(isCurrent ? Color.cyan.opacity(0.3) : Color.primary.opacity(0.06))
                            )
                            .foregroundColor(isCurrent ? .cyan : .primary)
                    }
                    .buttonStyle(.plain)
                    .accessibilityLabel(topic)
                }
            }

            Spacer(minLength: 0)
        }
        .padding(10)
    }

    private func shortTopicName(_ topic: String) -> String {
        switch topic {
        case "Binary Search on Answer": return "BS on Answer"
        case "Heap / Priority Queue": return "Heap / PQ"
        case "Dijkstra / Shortest Path": return "Dijkstra"
        case "Segment Tree / Fenwick Tree": return "Segment Tree"
        case "Recursion and Backtracking": return "Recursion"
        case "Stacks and Queues": return "Stacks/Queues"
        default: return topic
        }
    }

    // MARK: - Topic Header Switcher Component

    private var topicHeaderBar: some View {
        HStack(spacing: 4) {
            // Previous topic button
            Button(intent: CycleTopicIntent(forward: false)) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 9, weight: .bold))
                    .foregroundColor(.cyan)
                    .frame(width: 18, height: 18)
                    .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Previous topic")

            // Current Topic Pill (Clicking ••• or topic opens topic picker)
            Button(intent: ToggleTopicPickerIntent()) {
                HStack(spacing: 4) {
                    Text(entry.selectedTopic)
                        .font(.system(size: 11, weight: .bold, design: .rounded))
                        .foregroundColor(.primary)
                        .lineLimit(1)

                    Image(systemName: "ellipsis")
                        .font(.system(size: 8, weight: .bold))
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal, 7)
                .padding(.vertical, 2)
                .background(
                    Capsule()
                        .fill(Color.cyan.opacity(0.18))
                )
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Choose topic. Current topic: \(entry.selectedTopic)")

            // Next topic button
            Button(intent: CycleTopicIntent(forward: true)) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 9, weight: .bold))
                    .foregroundColor(.cyan)
                    .frame(width: 18, height: 18)
                    .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            .accessibilityLabel("Next topic")
        }
    }

    // MARK: - Large Layout (4x4)

    private var largeLayout: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Header Row 1: Brand & Overall Stat Pill
            HStack {
                HStack(spacing: 6) {
                    Image(systemName: "curlybraces.square.fill")
                        .font(.system(size: 15))
                        .foregroundStyle(LinearGradient(colors: [.cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                    Text("DSA Tracker")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                }

                Spacer()

                HStack(spacing: 5) {
                    Text("\(entry.completedCount)/\(entry.totalCount)")
                        .font(.system(size: 11, weight: .bold, design: .monospaced))
                    Text("•")
                        .font(.system(size: 8))
                        .foregroundColor(.secondary)
                    Text("\(entry.percentage)%")
                        .font(.system(size: 11, weight: .bold, design: .monospaced))
                        .foregroundColor(.green)
                }
                .padding(.horizontal, 7)
                .padding(.vertical, 3)
                .background(Capsule().fill(Color.primary.opacity(0.08)))
            }

            // Header Row 2: Topic Switcher + Topic Status
            HStack {
                topicHeaderBar

                Spacer()

                if entry.selectedTopic != "All" {
                    Text("\(entry.topicCompletedCount)/\(entry.topicTotalCount) done (\(entry.topicPercentage)%)")
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(.secondary)
                } else {
                    Text("Roadmap 1 to 300")
                        .font(.system(size: 10, weight: .medium))
                        .foregroundColor(.secondary)
                }
            }

            // Progress Bar (Topic-wise)
            Capsule()
                .fill(Color.primary.opacity(0.1))
                .frame(height: 4)
                .overlay(
                    GeometryReader { geo in
                        Capsule()
                            .fill(LinearGradient(colors: [.green, .mint], startPoint: .leading, endPoint: .trailing))
                            .frame(width: max(0, min(geo.size.width, geo.size.width * CGFloat(entry.topicProgress))))
                    },
                    alignment: .leading
                )

            Divider()
                .padding(.vertical, 1)

            // Problems (up to 6 problems per page)
            if entry.pagedProblems.isEmpty {
                Spacer()
                VStack(spacing: 6) {
                    Image(systemName: "tray")
                        .font(.system(size: 24))
                        .foregroundColor(.secondary.opacity(0.5))
                    Text("No problems in \(entry.selectedTopic)")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                Spacer()
            } else {
                VStack(spacing: 4) {
                    ForEach(entry.pagedProblems) { problem in
                        widgetProblemRow(problem, isCompact: false)
                    }
                }
            }

            Spacer(minLength: 0)

            // Static Pagination Footer (Always visible so layout remains completely static)
            Divider()
                .padding(.vertical, 1)

            HStack {
                Button(intent: ChangePageIntent(forward: false)) {
                    HStack(spacing: 3) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 8, weight: .bold))
                        Text("Prev")
                            .font(.system(size: 9, weight: .semibold))
                    }
                    .foregroundColor(entry.currentPage > 0 ? .cyan : .secondary.opacity(0.3))
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
                .disabled(entry.currentPage == 0)

                Spacer()

                Text("Page \(entry.currentPage + 1) of \(entry.totalPages) (\(entry.filteredProblems.count) total)")
                    .font(.system(size: 9, weight: .medium, design: .monospaced))
                    .foregroundColor(.secondary)

                Spacer()

                Button(intent: ChangePageIntent(forward: true)) {
                    HStack(spacing: 3) {
                        Text("Next")
                            .font(.system(size: 9, weight: .semibold))
                        Image(systemName: "chevron.right")
                            .font(.system(size: 8, weight: .bold))
                    }
                    .foregroundColor(entry.currentPage < entry.totalPages - 1 ? .cyan : .secondary.opacity(0.3))
                    .padding(.horizontal, 6)
                    .padding(.vertical, 2)
                    .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
                .disabled(entry.currentPage >= entry.totalPages - 1)
            }
        }
        .padding(12)
    }

    // MARK: - Extra Large Layout (8x4 on macOS)

    private var extraLargeLayout: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Header
            HStack {
                HStack(spacing: 8) {
                    Image(systemName: "curlybraces.square.fill")
                        .font(.system(size: 18))
                        .foregroundStyle(LinearGradient(colors: [.cyan, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                    Text("DSA Tracker")
                        .font(.system(size: 17, weight: .bold, design: .rounded))
                    Text("300 Master Roadmap")
                        .font(.system(size: 11, weight: .medium))
                        .foregroundColor(.secondary)
                }

                Spacer()

                HStack(spacing: 8) {
                    topicHeaderBar

                    if entry.selectedTopic != "All" {
                        Text("\(entry.topicCompletedCount)/\(entry.topicTotalCount) done (\(entry.topicPercentage)%)")
                            .font(.system(size: 11, weight: .semibold, design: .rounded))
                            .foregroundColor(.cyan)
                    }
                }

                Spacer()

                HStack(spacing: 6) {
                    Text("\(entry.completedCount)/\(entry.totalCount) total")
                        .font(.system(size: 12, weight: .bold, design: .monospaced))
                    Text("•")
                        .font(.system(size: 8))
                        .foregroundColor(.secondary)
                    Text("\(entry.percentage)%")
                        .font(.system(size: 13, weight: .bold, design: .monospaced))
                        .foregroundColor(.green)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 4)
                .background(Capsule().fill(Color.primary.opacity(0.08)))
            }

            // Progress Bar (Topic-wise)
            Capsule()
                .fill(Color.primary.opacity(0.1))
                .frame(height: 5)
                .overlay(
                    GeometryReader { geo in
                        Capsule()
                            .fill(LinearGradient(colors: [.green, .mint, .cyan], startPoint: .leading, endPoint: .trailing))
                            .frame(width: max(0, min(geo.size.width, geo.size.width * CGFloat(entry.topicProgress))))
                    },
                    alignment: .leading
                )

            Divider()
                .padding(.vertical, 1)

            // 2-Column Grid (up to 12 problems)
            let problems = entry.pagedProblems
            if problems.isEmpty {
                Spacer()
                VStack(spacing: 6) {
                    Image(systemName: "tray")
                        .font(.system(size: 28))
                        .foregroundColor(.secondary.opacity(0.5))
                    Text("No problems found for \(entry.selectedTopic)")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                Spacer()
            } else {
                let leftColumn = Array(problems.prefix(6))
                let rightColumn = Array(problems.dropFirst(6))

                HStack(alignment: .top, spacing: 20) {
                    VStack(spacing: 5) {
                        ForEach(leftColumn) { problem in
                            widgetProblemRow(problem, isCompact: false)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)

                    VStack(spacing: 5) {
                        ForEach(rightColumn) { problem in
                            widgetProblemRow(problem, isCompact: false)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                }
            }

            Spacer(minLength: 0)

            // Extra Large Pagination (Static footer)
            let xlTotalPages = entry.totalPages
            Divider()
                .padding(.vertical, 1)

            HStack {
                Button(intent: ChangePageIntent(forward: false, pageSize: 12)) {
                    HStack(spacing: 3) {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 9, weight: .bold))
                        Text("Previous 12")
                            .font(.system(size: 10, weight: .semibold))
                    }
                    .foregroundColor(entry.currentPage > 0 ? .cyan : .secondary.opacity(0.3))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 3)
                    .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
                .disabled(entry.currentPage == 0)

                Spacer()

                Text("Showing \(entry.filteredProblems.isEmpty ? 0 : entry.currentPage * 12 + 1)–\(min((entry.currentPage + 1) * 12, entry.filteredProblems.count)) of \(entry.filteredProblems.count)")
                    .font(.system(size: 10, weight: .medium, design: .monospaced))
                    .foregroundColor(.secondary)

                Spacer()

                Button(intent: ChangePageIntent(forward: true, pageSize: 12)) {
                    HStack(spacing: 3) {
                        Text("Next 12")
                            .font(.system(size: 10, weight: .semibold))
                        Image(systemName: "chevron.right")
                            .font(.system(size: 9, weight: .bold))
                    }
                    .foregroundColor(entry.currentPage < xlTotalPages - 1 ? .cyan : .secondary.opacity(0.3))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 3)
                    .contentShape(Rectangle())
                }
                .buttonStyle(.plain)
                .disabled(entry.currentPage >= xlTotalPages - 1)
            }
        }
        .padding(14)
    }

    // MARK: - Problem Row with Interactive Checkbox

    private func widgetProblemRow(_ problem: Problem, isCompact: Bool) -> some View {
        HStack(spacing: 7) {
            // Toggle lets WidgetKit show the new checkmark before the intent
            // finishes and reconciles it with the persisted timeline afterward.
            Toggle(isOn: problem.isCompleted, intent: ToggleProblemIntent(problemId: problem.id.uuidString)) {
                Text(problem.title)
            }
            .toggleStyle(CompletionCheckboxStyle(isCompact: isCompact, problemTitle: problem.title))

            // Priority index badge
            Text("#\(problem.priority)")
                .font(.system(size: 9, weight: .bold, design: .monospaced))
                .foregroundColor(.secondary.opacity(0.7))
                .frame(width: 24, alignment: .trailing)

            // Link opening problem in browser
            Link(destination: problem.url) {
                VStack(alignment: .leading, spacing: 1) {
                    Text(problem.title)
                        .font(.system(size: isCompact ? 11 : 12, weight: .medium))
                        .foregroundColor(problem.isCompleted ? .secondary : .primary)
                        .strikethrough(problem.isCompleted, color: .secondary.opacity(0.7))
                        .lineLimit(1)

                    if !isCompact {
                        HStack(spacing: 4) {
                            Text(problem.topic)
                                .lineLimit(1)
                                .font(.system(size: 9, weight: .medium))
                                .foregroundColor(.cyan.opacity(0.9))
                            Text("•")
                                .font(.system(size: 7))
                                .foregroundColor(.secondary.opacity(0.5))
                            Text(problem.subtopic)
                                .font(.system(size: 9))
                                .foregroundColor(.secondary.opacity(0.7))
                                .lineLimit(1)
                        }
                    }
                }
            }

            Spacer(minLength: 4)

            // Difficulty badge
            Text(problem.difficulty.rawValue)
                .font(.system(size: isCompact ? 8 : 9, weight: .bold))
                .foregroundColor(badgeColor(for: problem.difficulty))
                .padding(.horizontal, 5)
                .padding(.vertical, 2)
                .background(
                    Capsule()
                        .fill(badgeColor(for: problem.difficulty).opacity(0.16))
                )
        }
        .padding(.vertical, 1)
    }

    private func badgeColor(for difficulty: Difficulty) -> Color {
        switch difficulty {
        case .easy: return .green
        case .medium: return .orange
        case .hard: return .red
        }
    }
}

/// Uses configuration.isOn so WidgetKit can archive both visual states for
/// immediate feedback. Capturing the entry's problem here would stay stale.
private struct CompletionCheckboxStyle: ToggleStyle {
    let isCompact: Bool
    let problemTitle: String

    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .font(.system(size: isCompact ? 13 : 14, weight: .semibold))
                .foregroundColor(configuration.isOn ? .green : .secondary.opacity(0.8))
                .frame(width: 20, height: 20)
                .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
        .accessibilityLabel(problemTitle)
        .accessibilityValue(configuration.isOn ? "Completed" : "Incomplete")
    }
}

// MARK: - Widget Definition

@main
public struct DSATrackerWidget: Widget {
    public let kind: String = "DSATracker"

    public init() {}

    public var body: some WidgetConfiguration {
        StaticConfiguration(
            kind: kind,
            provider: DSATimelineProvider()
        ) { entry in
            DSATrackerWidgetEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
        .configurationDisplayName("DSA Tracker")
        .description("Track all 300 DSA problems directly on your desktop.")
        .supportedFamilies([.systemLarge, .systemExtraLarge])
    }
}
