import Foundation

public enum Difficulty: String, Codable, CaseIterable, Sendable {
    case easy = "Easy"
    case medium = "Medium"
    case hard = "Hard"
}

public enum Platform: String, Codable, CaseIterable, Sendable {
    case leetCode = "LeetCode"
    case geeksForGeeks = "GeeksforGeeks"
}

public struct Problem: Identifiable, Codable, Equatable, Sendable {
    public let id: UUID
    public var title: String
    public var topic: String
    public var subtopic: String
    public var difficulty: Difficulty
    public var platform: Platform
    public var url: URL
    public var isCompleted: Bool
    public var priority: Int

    public init(
        id: UUID = UUID(),
        title: String,
        topic: String,
        subtopic: String,
        difficulty: Difficulty,
        platform: Platform,
        url: URL,
        isCompleted: Bool = false,
        priority: Int
    ) {
        self.id = id
        self.title = title
        self.topic = topic
        self.subtopic = subtopic
        self.difficulty = difficulty
        self.platform = platform
        self.url = url
        self.isCompleted = isCompleted
        self.priority = priority
    }
}

public enum DSATopics {
    public static let allTopics: [String] = [
        "Arrays", "Hashing", "Strings", "Two Pointers", "Sliding Window",
        "Prefix Sum", "Binary Search", "Binary Search on Answer", "Linked List",
        "Stack", "Queue / Deque", "Monotonic Stack", "Recursion", "Backtracking",
        "Binary Trees", "BST", "Tree BFS / DFS", "Heap / Priority Queue",
        "Greedy", "Intervals", "Graph BFS / DFS", "Topological Sort",
        "Union Find / DSU", "Dijkstra / Shortest Path", "MST", "1D DP",
        "Grid / 2D DP", "DP Subsequences", "Knapsack DP", "String DP",
        "Bit Manipulation", "Trie", "Advanced Graphs", "Segment Tree / Fenwick Tree"
    ]
}
