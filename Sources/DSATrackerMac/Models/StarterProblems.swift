import Foundation
import CryptoKit

public enum StarterProblems {
    public static let initialList: [Problem] = [
        Problem(
            title: "Largest Element in Array",
            topic: "Arrays",
            subtopic: "Basic Operations",
            difficulty: .easy,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/largest-element-in-array/1")!,
            priority: 1
        ),
        Problem(
            title: "Second Largest Element in Array",
            topic: "Arrays",
            subtopic: "Basic Operations",
            difficulty: .easy,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/second-largest3735/1")!,
            priority: 2
        ),
        Problem(
            title: "Check if Array Is Sorted",
            topic: "Arrays",
            subtopic: "Basic Operations",
            difficulty: .easy,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/check-if-an-array-is-sorted0701/1")!,
            priority: 3
        ),
        Problem(
            title: "Remove Duplicates from Sorted Array",
            topic: "Arrays",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/remove-duplicates-from-sorted-array/")!,
            priority: 4
        ),
        Problem(
            title: "Rotate Array",
            topic: "Arrays",
            subtopic: "Rotation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/rotate-array/")!,
            priority: 5
        ),
        Problem(
            title: "Move Zeroes",
            topic: "Arrays",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/move-zeroes/")!,
            priority: 6
        ),
        Problem(
            title: "Merge Sorted Array",
            topic: "Arrays",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/merge-sorted-array/")!,
            priority: 7
        ),
        Problem(
            title: "Best Time to Buy and Sell Stock",
            topic: "Arrays",
            subtopic: "Sliding Window / Min Tracking",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/best-time-to-buy-and-sell-stock/")!,
            priority: 8
        ),
        Problem(
            title: "Maximum Subarray",
            topic: "Arrays",
            subtopic: "Kadane's Algorithm",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximum-subarray/")!,
            priority: 9
        ),
        Problem(
            title: "Maximum Product Subarray",
            topic: "Arrays",
            subtopic: "DP / Prefix",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximum-product-subarray/")!,
            priority: 10
        ),
        Problem(
            title: "Sort Colors",
            topic: "Arrays",
            subtopic: "Dutch National Flag",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/sort-colors/")!,
            priority: 11
        ),
        Problem(
            title: "Majority Element",
            topic: "Arrays",
            subtopic: "Boyer-Moore Voting",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/majority-element/")!,
            priority: 12
        ),
        Problem(
            title: "Majority Element II",
            topic: "Arrays",
            subtopic: "Boyer-Moore Voting",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/majority-element-ii/")!,
            priority: 13
        ),
        Problem(
            title: "Next Permutation",
            topic: "Arrays",
            subtopic: "Permutation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/next-permutation/")!,
            priority: 14
        ),
        Problem(
            title: "First Missing Positive",
            topic: "Arrays",
            subtopic: "Cyclic Sort",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/first-missing-positive/")!,
            priority: 15
        ),
        Problem(
            title: "Set Matrix Zeroes",
            topic: "Arrays",
            subtopic: "Matrix",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/set-matrix-zeroes/")!,
            priority: 16
        ),
        Problem(
            title: "Spiral Matrix",
            topic: "Arrays",
            subtopic: "Matrix Simulation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/spiral-matrix/")!,
            priority: 17
        ),
        Problem(
            title: "Rotate Image",
            topic: "Arrays",
            subtopic: "Matrix Rotation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/rotate-image/")!,
            priority: 18
        ),
        Problem(
            title: "Count Inversions",
            topic: "Arrays",
            subtopic: "Merge Sort Pattern",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/inversion-of-array-1587115620/1")!,
            priority: 19
        ),
        Problem(
            title: "Reverse Pairs",
            topic: "Arrays",
            subtopic: "Merge Sort Pattern",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/reverse-pairs/")!,
            priority: 20
        ),
        Problem(
            title: "Maximum Sum Circular Subarray",
            topic: "Arrays",
            subtopic: "Kadane's Algorithm",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximum-sum-circular-subarray/")!,
            priority: 21
        ),
        Problem(
            title: "Two Sum",
            topic: "Hashing",
            subtopic: "Hash Map",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/two-sum/")!,
            priority: 22
        ),
        Problem(
            title: "Contains Duplicate",
            topic: "Hashing",
            subtopic: "Hash Set",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/contains-duplicate/")!,
            priority: 23
        ),
        Problem(
            title: "Valid Anagram",
            topic: "Hashing",
            subtopic: "Frequency Counter",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/valid-anagram/")!,
            priority: 24
        ),
        Problem(
            title: "Intersection of Two Arrays",
            topic: "Hashing",
            subtopic: "Hash Set",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/intersection-of-two-arrays/")!,
            priority: 25
        ),
        Problem(
            title: "Ransom Note",
            topic: "Hashing",
            subtopic: "Frequency Counter",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/ransom-note/")!,
            priority: 26
        ),
        Problem(
            title: "Group Anagrams",
            topic: "Hashing",
            subtopic: "Hash Map Categorization",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/group-anagrams/")!,
            priority: 27
        ),
        Problem(
            title: "Longest Consecutive Sequence",
            topic: "Hashing",
            subtopic: "Hash Set Sequence",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-consecutive-sequence/")!,
            priority: 28
        ),
        Problem(
            title: "Subarray Sum Equals K",
            topic: "Hashing",
            subtopic: "Prefix Sum Hash Map",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/subarray-sum-equals-k/")!,
            priority: 29
        ),
        Problem(
            title: "Isomorphic Strings",
            topic: "Hashing",
            subtopic: "Two-Way Mapping",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/isomorphic-strings/")!,
            priority: 30
        ),
        Problem(
            title: "Reverse String",
            topic: "Strings",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/reverse-string/")!,
            priority: 31
        ),
        Problem(
            title: "Valid Palindrome",
            topic: "Strings",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/valid-palindrome/")!,
            priority: 32
        ),
        Problem(
            title: "Longest Common Prefix",
            topic: "Strings",
            subtopic: "String Matching",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-common-prefix/")!,
            priority: 33
        ),
        Problem(
            title: "Find the Index of First Occurrence in a String",
            topic: "Strings",
            subtopic: "String Search",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/")!,
            priority: 34
        ),
        Problem(
            title: "String Compression",
            topic: "Strings",
            subtopic: "Two Pointers",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/string-compression/")!,
            priority: 35
        ),
        Problem(
            title: "Roman to Integer",
            topic: "Strings",
            subtopic: "Parsing",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/roman-to-integer/")!,
            priority: 36
        ),
        Problem(
            title: "Compare Version Numbers",
            topic: "Strings",
            subtopic: "Two Pointers",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/compare-version-numbers/")!,
            priority: 37
        ),
        Problem(
            title: "Longest Palindromic Substring",
            topic: "Strings",
            subtopic: "Expand Around Center",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-palindromic-substring/")!,
            priority: 38
        ),
        Problem(
            title: "Palindromic Substrings",
            topic: "Strings",
            subtopic: "Expand Around Center",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/palindromic-substrings/")!,
            priority: 39
        ),
        Problem(
            title: "KMP Pattern Searching",
            topic: "Strings",
            subtopic: "KMP Algorithm",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/search-pattern0205/1")!,
            priority: 40
        ),
        Problem(
            title: "Two Sum II",
            topic: "Two Pointers",
            subtopic: "Sorted Array",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/")!,
            priority: 41
        ),
        Problem(
            title: "Squares of a Sorted Array",
            topic: "Two Pointers",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/squares-of-a-sorted-array/")!,
            priority: 42
        ),
        Problem(
            title: "Remove Element",
            topic: "Two Pointers",
            subtopic: "In-Place Overwrite",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/remove-element/")!,
            priority: 43
        ),
        Problem(
            title: "Backspace String Compare",
            topic: "Two Pointers",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/backspace-string-compare/")!,
            priority: 44
        ),
        Problem(
            title: "3Sum",
            topic: "Two Pointers",
            subtopic: "Sorting + Two Pointers",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/3sum/")!,
            priority: 45
        ),
        Problem(
            title: "4Sum",
            topic: "Two Pointers",
            subtopic: "K-Sum Pattern",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/4sum/")!,
            priority: 46
        ),
        Problem(
            title: "Container With Most Water",
            topic: "Two Pointers",
            subtopic: "Greedy Two Pointers",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/container-with-most-water/")!,
            priority: 47
        ),
        Problem(
            title: "Trapping Rain Water",
            topic: "Two Pointers",
            subtopic: "Two Pointers / Prefix",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/trapping-rain-water/")!,
            priority: 48
        ),
        Problem(
            title: "Maximum Average Subarray I",
            topic: "Sliding Window",
            subtopic: "Fixed Window",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximum-average-subarray-i/")!,
            priority: 49
        ),
        Problem(
            title: "Maximum Sum Subarray of Size K",
            topic: "Sliding Window",
            subtopic: "Fixed Window",
            difficulty: .easy,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/max-sum-subarray-of-size-k5313/1")!,
            priority: 50
        ),
        Problem(
            title: "Longest Substring Without Repeating Characters",
            topic: "Sliding Window",
            subtopic: "Variable Window",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-substring-without-repeating-characters/")!,
            priority: 51
        ),
        Problem(
            title: "Longest Repeating Character Replacement",
            topic: "Sliding Window",
            subtopic: "Variable Window",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-repeating-character-replacement/")!,
            priority: 52
        ),
        Problem(
            title: "Max Consecutive Ones III",
            topic: "Sliding Window",
            subtopic: "At Most K Flips",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/max-consecutive-ones-iii/")!,
            priority: 53
        ),
        Problem(
            title: "Fruit Into Baskets",
            topic: "Sliding Window",
            subtopic: "At Most 2 Types",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/fruit-into-baskets/")!,
            priority: 54
        ),
        Problem(
            title: "Permutation in String",
            topic: "Sliding Window",
            subtopic: "Fixed Window Hash",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/permutation-in-string/")!,
            priority: 55
        ),
        Problem(
            title: "Minimum Size Subarray Sum",
            topic: "Sliding Window",
            subtopic: "Variable Window Sum",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-size-subarray-sum/")!,
            priority: 56
        ),
        Problem(
            title: "Minimum Window Substring",
            topic: "Sliding Window",
            subtopic: "Exact Match Window",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-window-substring/")!,
            priority: 57
        ),
        Problem(
            title: "Range Sum Query – Immutable",
            topic: "Prefix Sum",
            subtopic: "Prefix Array",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/range-sum-query-immutable/")!,
            priority: 58
        ),
        Problem(
            title: "Find Pivot Index",
            topic: "Prefix Sum",
            subtopic: "Prefix Equilibrium",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-pivot-index/")!,
            priority: 59
        ),
        Problem(
            title: "Product of Array Except Self",
            topic: "Prefix Sum",
            subtopic: "Prefix & Suffix",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/product-of-array-except-self/")!,
            priority: 60
        ),
        Problem(
            title: "Subarray Sums Divisible by K",
            topic: "Prefix Sum",
            subtopic: "Modulo Hash Map",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/subarray-sums-divisible-by-k/")!,
            priority: 61
        ),
        Problem(
            title: "Continuous Subarray Sum",
            topic: "Prefix Sum",
            subtopic: "Modulo Hash Map",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/continuous-subarray-sum/")!,
            priority: 62
        ),
        Problem(
            title: "Count Number of Nice Subarrays",
            topic: "Prefix Sum",
            subtopic: "Odd Count Prefix",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/count-number-of-nice-subarrays/")!,
            priority: 63
        ),
        Problem(
            title: "Binary Search",
            topic: "Binary Search",
            subtopic: "Classic",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-search/")!,
            priority: 64
        ),
        Problem(
            title: "Search Insert Position",
            topic: "Binary Search",
            subtopic: "Lower Bound",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/search-insert-position/")!,
            priority: 65
        ),
        Problem(
            title: "First Bad Version",
            topic: "Binary Search",
            subtopic: "Condition Boundary",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/first-bad-version/")!,
            priority: 66
        ),
        Problem(
            title: "Sqrt(x)",
            topic: "Binary Search",
            subtopic: "Monotonic Function",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/sqrtx/")!,
            priority: 67
        ),
        Problem(
            title: "Find First and Last Position",
            topic: "Binary Search",
            subtopic: "Bounds",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/")!,
            priority: 68
        ),
        Problem(
            title: "Single Element in a Sorted Array",
            topic: "Binary Search",
            subtopic: "Index Parity",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/single-element-in-a-sorted-array/")!,
            priority: 69
        ),
        Problem(
            title: "Find Peak Element",
            topic: "Binary Search",
            subtopic: "Peak Detection",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-peak-element/")!,
            priority: 70
        ),
        Problem(
            title: "Find Minimum in Rotated Sorted Array",
            topic: "Binary Search",
            subtopic: "Rotated Array",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/")!,
            priority: 71
        ),
        Problem(
            title: "Search in Rotated Sorted Array",
            topic: "Binary Search",
            subtopic: "Rotated Array",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/search-in-rotated-sorted-array/")!,
            priority: 72
        ),
        Problem(
            title: "Search in Rotated Sorted Array II",
            topic: "Binary Search",
            subtopic: "Duplicates",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/search-in-rotated-sorted-array-ii/")!,
            priority: 73
        ),
        Problem(
            title: "Search a 2D Matrix",
            topic: "Binary Search",
            subtopic: "Matrix Flattening",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/search-a-2d-matrix/")!,
            priority: 74
        ),
        Problem(
            title: "Median of Two Sorted Arrays",
            topic: "Binary Search",
            subtopic: "Partitioning",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/median-of-two-sorted-arrays/")!,
            priority: 75
        ),
        Problem(
            title: "Koko Eating Bananas",
            topic: "Binary Search on Answer",
            subtopic: "Speed Bounds",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/koko-eating-bananas/")!,
            priority: 76
        ),
        Problem(
            title: "Capacity to Ship Packages Within D Days",
            topic: "Binary Search on Answer",
            subtopic: "Weight Bounds",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/capacity-to-ship-packages-within-d-days/")!,
            priority: 77
        ),
        Problem(
            title: "Split Array Largest Sum",
            topic: "Binary Search on Answer",
            subtopic: "Subarray Allocation",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/split-array-largest-sum/")!,
            priority: 78
        ),
        Problem(
            title: "Minimize Max Distance to Gas Station",
            topic: "Binary Search on Answer",
            subtopic: "Continuous Range",
            difficulty: .hard,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/minimize-max-distance-to-gas-station/1")!,
            priority: 79
        ),
        Problem(
            title: "Allocate Minimum Pages",
            topic: "Binary Search on Answer",
            subtopic: "Book Allocation",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/allocate-minimum-number-of-pages0937/1")!,
            priority: 80
        ),
        Problem(
            title: "Aggressive Cows",
            topic: "Binary Search on Answer",
            subtopic: "Distance Allocation",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/aggressive-cows/1")!,
            priority: 81
        ),
        Problem(
            title: "Nth Root of an Integer",
            topic: "Binary Search on Answer",
            subtopic: "Math Bounds",
            difficulty: .easy,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/find-nth-root-of-m5843/1")!,
            priority: 82
        ),
        Problem(
            title: "Magnetic Force Between Two Balls",
            topic: "Binary Search on Answer",
            subtopic: "Distance Bounds",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/magnetic-force-between-two-balls/")!,
            priority: 83
        ),
        Problem(
            title: "Reverse Linked List",
            topic: "Linked List",
            subtopic: "Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/reverse-linked-list/")!,
            priority: 84
        ),
        Problem(
            title: "Middle of the Linked List",
            topic: "Linked List",
            subtopic: "Fast & Slow Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/middle-of-the-linked-list/")!,
            priority: 85
        ),
        Problem(
            title: "Merge Two Sorted Lists",
            topic: "Linked List",
            subtopic: "Merge",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/merge-two-sorted-lists/")!,
            priority: 86
        ),
        Problem(
            title: "Remove Duplicates from Sorted List",
            topic: "Linked List",
            subtopic: "Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/remove-duplicates-from-sorted-list/")!,
            priority: 87
        ),
        Problem(
            title: "Linked List Cycle",
            topic: "Linked List",
            subtopic: "Floyd's Cycle",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/linked-list-cycle/")!,
            priority: 88
        ),
        Problem(
            title: "Linked List Cycle II",
            topic: "Linked List",
            subtopic: "Floyd's Cycle Entry",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/linked-list-cycle-ii/")!,
            priority: 89
        ),
        Problem(
            title: "Intersection of Two Linked Lists",
            topic: "Linked List",
            subtopic: "Two Pointers",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/intersection-of-two-linked-lists/")!,
            priority: 90
        ),
        Problem(
            title: "Remove Nth Node From End",
            topic: "Linked List",
            subtopic: "Gap Pointers",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/remove-nth-node-from-end-of-list/")!,
            priority: 91
        ),
        Problem(
            title: "Palindrome Linked List",
            topic: "Linked List",
            subtopic: "Reverse Half",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/palindrome-linked-list/")!,
            priority: 92
        ),
        Problem(
            title: "Odd Even Linked List",
            topic: "Linked List",
            subtopic: "Reordering",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/odd-even-linked-list/")!,
            priority: 93
        ),
        Problem(
            title: "Add Two Numbers",
            topic: "Linked List",
            subtopic: "Simulation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/add-two-numbers/")!,
            priority: 94
        ),
        Problem(
            title: "Reorder List",
            topic: "Linked List",
            subtopic: "Reverse & Interleave",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/reorder-list/")!,
            priority: 95
        ),
        Problem(
            title: "Copy List with Random Pointer",
            topic: "Linked List",
            subtopic: "Deep Copy",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/copy-list-with-random-pointer/")!,
            priority: 96
        ),
        Problem(
            title: "Sort List",
            topic: "Linked List",
            subtopic: "Merge Sort",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/sort-list/")!,
            priority: 97
        ),
        Problem(
            title: "Valid Parentheses",
            topic: "Stack",
            subtopic: "Bracket Matching",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/valid-parentheses/")!,
            priority: 98
        ),
        Problem(
            title: "Baseball Game",
            topic: "Stack",
            subtopic: "Simulation",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/baseball-game/")!,
            priority: 99
        ),
        Problem(
            title: "Min Stack",
            topic: "Stack",
            subtopic: "Design",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/min-stack/")!,
            priority: 100
        ),
        Problem(
            title: "Evaluate Reverse Polish Notation",
            topic: "Stack",
            subtopic: "Postfix Evaluation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/evaluate-reverse-polish-notation/")!,
            priority: 101
        ),
        Problem(
            title: "Simplify Path",
            topic: "Stack",
            subtopic: "Directory Stack",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/simplify-path/")!,
            priority: 102
        ),
        Problem(
            title: "Asteroid Collision",
            topic: "Stack",
            subtopic: "Collision Simulation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/asteroid-collision/")!,
            priority: 103
        ),
        Problem(
            title: "Decode String",
            topic: "Stack",
            subtopic: "Nested String Parsing",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/decode-string/")!,
            priority: 104
        ),
        Problem(
            title: "Basic Calculator II",
            topic: "Stack",
            subtopic: "Arithmetic Parsing",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/basic-calculator-ii/")!,
            priority: 105
        ),
        Problem(
            title: "Implement Queue Using Stacks",
            topic: "Queue / Deque",
            subtopic: "Two Stacks",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/implement-queue-using-stacks/")!,
            priority: 106
        ),
        Problem(
            title: "Design Circular Queue",
            topic: "Queue / Deque",
            subtopic: "Ring Buffer",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/design-circular-queue/")!,
            priority: 107
        ),
        Problem(
            title: "Number of Recent Calls",
            topic: "Queue / Deque",
            subtopic: "Sliding Counter",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/number-of-recent-calls/")!,
            priority: 108
        ),
        Problem(
            title: "Sliding Window Maximum",
            topic: "Queue / Deque",
            subtopic: "Monotonic Deque",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/sliding-window-maximum/")!,
            priority: 109
        ),
        Problem(
            title: "Shortest Subarray with Sum at Least K",
            topic: "Queue / Deque",
            subtopic: "Monotonic Deque",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/shortest-subarray-with-sum-at-least-k/")!,
            priority: 110
        ),
        Problem(
            title: "Next Greater Element I",
            topic: "Monotonic Stack",
            subtopic: "Next Greater",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/next-greater-element-i/")!,
            priority: 111
        ),
        Problem(
            title: "Next Greater Element II",
            topic: "Monotonic Stack",
            subtopic: "Circular Next Greater",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/next-greater-element-ii/")!,
            priority: 112
        ),
        Problem(
            title: "Daily Temperatures",
            topic: "Monotonic Stack",
            subtopic: "Wait Days",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/daily-temperatures/")!,
            priority: 113
        ),
        Problem(
            title: "Online Stock Span",
            topic: "Monotonic Stack",
            subtopic: "Span Calculation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/online-stock-span/")!,
            priority: 114
        ),
        Problem(
            title: "Sum of Subarray Minimums",
            topic: "Monotonic Stack",
            subtopic: "Contribution Count",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/sum-of-subarray-minimums/")!,
            priority: 115
        ),
        Problem(
            title: "Largest Rectangle in Histogram",
            topic: "Monotonic Stack",
            subtopic: "Histogram Extents",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/largest-rectangle-in-histogram/")!,
            priority: 116
        ),
        Problem(
            title: "Maximal Rectangle",
            topic: "Monotonic Stack",
            subtopic: "2D Histogram",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximal-rectangle/")!,
            priority: 117
        ),
        Problem(
            title: "Pow(x, n)",
            topic: "Recursion",
            subtopic: "Divide & Conquer",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/powx-n/")!,
            priority: 118
        ),
        Problem(
            title: "Reverse a Stack Using Recursion",
            topic: "Recursion",
            subtopic: "Call Stack Reversal",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/reverse-a-stack/1")!,
            priority: 119
        ),
        Problem(
            title: "Sort a Stack Using Recursion",
            topic: "Recursion",
            subtopic: "Call Stack Sort",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/sort-a-stack/1")!,
            priority: 120
        ),
        Problem(
            title: "Tower of Hanoi",
            topic: "Recursion",
            subtopic: "Classical Recursion",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/tower-of-hanoi-1587115621/1")!,
            priority: 121
        ),
        Problem(
            title: "Josephus Problem",
            topic: "Recursion",
            subtopic: "Circular Elimination",
            difficulty: .easy,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/josephus-problem/1")!,
            priority: 122
        ),
        Problem(
            title: "Count Good Numbers",
            topic: "Recursion",
            subtopic: "Modular Exponentiation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/count-good-numbers/")!,
            priority: 123
        ),
        Problem(
            title: "Subsets",
            topic: "Backtracking",
            subtopic: "Power Set",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/subsets/")!,
            priority: 124
        ),
        Problem(
            title: "Subsets II",
            topic: "Backtracking",
            subtopic: "Duplicates Handling",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/subsets-ii/")!,
            priority: 125
        ),
        Problem(
            title: "Permutations",
            topic: "Backtracking",
            subtopic: "Array Permutations",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/permutations/")!,
            priority: 126
        ),
        Problem(
            title: "Permutations II",
            topic: "Backtracking",
            subtopic: "Duplicate Permutations",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/permutations-ii/")!,
            priority: 127
        ),
        Problem(
            title: "Combination Sum",
            topic: "Backtracking",
            subtopic: "Unbounded Sum",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/combination-sum/")!,
            priority: 128
        ),
        Problem(
            title: "Combination Sum II",
            topic: "Backtracking",
            subtopic: "Bounded Sum",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/combination-sum-ii/")!,
            priority: 129
        ),
        Problem(
            title: "Letter Combinations of a Phone Number",
            topic: "Backtracking",
            subtopic: "Combinations",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/letter-combinations-of-a-phone-number/")!,
            priority: 130
        ),
        Problem(
            title: "Palindrome Partitioning",
            topic: "Backtracking",
            subtopic: "String Partition",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/palindrome-partitioning/")!,
            priority: 131
        ),
        Problem(
            title: "Word Search",
            topic: "Backtracking",
            subtopic: "Grid Search",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/word-search/")!,
            priority: 132
        ),
        Problem(
            title: "Restore IP Addresses",
            topic: "Backtracking",
            subtopic: "Valid IP Generation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/restore-ip-addresses/")!,
            priority: 133
        ),
        Problem(
            title: "N-Queens",
            topic: "Backtracking",
            subtopic: "Chess Placement",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/n-queens/")!,
            priority: 134
        ),
        Problem(
            title: "Sudoku Solver",
            topic: "Backtracking",
            subtopic: "Grid Constraint",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/sudoku-solver/")!,
            priority: 135
        ),
        Problem(
            title: "Binary Tree Preorder Traversal",
            topic: "Binary Trees",
            subtopic: "Traversal",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-preorder-traversal/")!,
            priority: 136
        ),
        Problem(
            title: "Binary Tree Inorder Traversal",
            topic: "Binary Trees",
            subtopic: "Traversal",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-inorder-traversal/")!,
            priority: 137
        ),
        Problem(
            title: "Binary Tree Postorder Traversal",
            topic: "Binary Trees",
            subtopic: "Traversal",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-postorder-traversal/")!,
            priority: 138
        ),
        Problem(
            title: "Maximum Depth of Binary Tree",
            topic: "Binary Trees",
            subtopic: "Depth",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximum-depth-of-binary-tree/")!,
            priority: 139
        ),
        Problem(
            title: "Same Tree",
            topic: "Binary Trees",
            subtopic: "Comparison",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/same-tree/")!,
            priority: 140
        ),
        Problem(
            title: "Invert Binary Tree",
            topic: "Binary Trees",
            subtopic: "Tree Mutation",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/invert-binary-tree/")!,
            priority: 141
        ),
        Problem(
            title: "Diameter of Binary Tree",
            topic: "Binary Trees",
            subtopic: "Tree Height",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/diameter-of-binary-tree/")!,
            priority: 142
        ),
        Problem(
            title: "Balanced Binary Tree",
            topic: "Binary Trees",
            subtopic: "Height Balance",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/balanced-binary-tree/")!,
            priority: 143
        ),
        Problem(
            title: "Symmetric Tree",
            topic: "Binary Trees",
            subtopic: "Tree Reflection",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/symmetric-tree/")!,
            priority: 144
        ),
        Problem(
            title: "Count Complete Tree Nodes",
            topic: "Binary Trees",
            subtopic: "Binary Search Tree Nodes",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/count-complete-tree-nodes/")!,
            priority: 145
        ),
        Problem(
            title: "Binary Tree Maximum Path Sum",
            topic: "Binary Trees",
            subtopic: "Bottom-up Path Sum",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-maximum-path-sum/")!,
            priority: 146
        ),
        Problem(
            title: "Construct Tree from Preorder & Inorder",
            topic: "Binary Trees",
            subtopic: "Tree Reconstruction",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/")!,
            priority: 147
        ),
        Problem(
            title: "Serialize and Deserialize Binary Tree",
            topic: "Binary Trees",
            subtopic: "Encoding / Decoding",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/serialize-and-deserialize-binary-tree/")!,
            priority: 148
        ),
        Problem(
            title: "Flatten Binary Tree to Linked List",
            topic: "Binary Trees",
            subtopic: "In-Place Flattening",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/flatten-binary-tree-to-linked-list/")!,
            priority: 149
        ),
        Problem(
            title: "Search in a BST",
            topic: "BST",
            subtopic: "Binary Search",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/search-in-a-binary-search-tree/")!,
            priority: 150
        ),
        Problem(
            title: "Insert into a BST",
            topic: "BST",
            subtopic: "Tree Mutation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/insert-into-a-binary-search-tree/")!,
            priority: 151
        ),
        Problem(
            title: "Validate BST",
            topic: "BST",
            subtopic: "Range Validation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/validate-binary-search-tree/")!,
            priority: 152
        ),
        Problem(
            title: "Kth Smallest Element in BST",
            topic: "BST",
            subtopic: "Inorder Traversal",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/kth-smallest-element-in-a-bst/")!,
            priority: 153
        ),
        Problem(
            title: "LCA of a BST",
            topic: "BST",
            subtopic: "Ancestor Search",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/")!,
            priority: 154
        ),
        Problem(
            title: "Minimum Absolute Difference in BST",
            topic: "BST",
            subtopic: "Inorder Difference",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-absolute-difference-in-bst/")!,
            priority: 155
        ),
        Problem(
            title: "Recover BST",
            topic: "BST",
            subtopic: "Two Nodes Swap",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/recover-binary-search-tree/")!,
            priority: 156
        ),
        Problem(
            title: "Delete Node in BST",
            topic: "BST",
            subtopic: "Tree Mutation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/delete-node-in-a-bst/")!,
            priority: 157
        ),
        Problem(
            title: "BST Iterator",
            topic: "BST",
            subtopic: "Inorder Stack",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-search-tree-iterator/")!,
            priority: 158
        ),
        Problem(
            title: "Binary Tree Level Order Traversal",
            topic: "Tree BFS / DFS",
            subtopic: "BFS Queue",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-level-order-traversal/")!,
            priority: 159
        ),
        Problem(
            title: "Zigzag Level Order Traversal",
            topic: "Tree BFS / DFS",
            subtopic: "BFS Deque",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-zigzag-level-order-traversal/")!,
            priority: 160
        ),
        Problem(
            title: "Binary Tree Right Side View",
            topic: "Tree BFS / DFS",
            subtopic: "Level Order Last",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-right-side-view/")!,
            priority: 161
        ),
        Problem(
            title: "Average of Levels",
            topic: "Tree BFS / DFS",
            subtopic: "BFS Level Mean",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/average-of-levels-in-binary-tree/")!,
            priority: 162
        ),
        Problem(
            title: "Binary Tree Paths",
            topic: "Tree BFS / DFS",
            subtopic: "DFS Backtracking",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/binary-tree-paths/")!,
            priority: 163
        ),
        Problem(
            title: "Path Sum",
            topic: "Tree BFS / DFS",
            subtopic: "Target Subtraction",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/path-sum/")!,
            priority: 164
        ),
        Problem(
            title: "Path Sum II",
            topic: "Tree BFS / DFS",
            subtopic: "All Paths Backtracking",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/path-sum-ii/")!,
            priority: 165
        ),
        Problem(
            title: "LCA of Binary Tree",
            topic: "Tree BFS / DFS",
            subtopic: "Subtree Check",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree/")!,
            priority: 166
        ),
        Problem(
            title: "All Nodes Distance K",
            topic: "Tree BFS / DFS",
            subtopic: "Graph Conversion BFS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/")!,
            priority: 167
        ),
        Problem(
            title: "Kth Largest Element in an Array",
            topic: "Heap / Priority Queue",
            subtopic: "Min-Heap",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/kth-largest-element-in-an-array/")!,
            priority: 168
        ),
        Problem(
            title: "Last Stone Weight",
            topic: "Heap / Priority Queue",
            subtopic: "Max-Heap",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/last-stone-weight/")!,
            priority: 169
        ),
        Problem(
            title: "Kth Largest Element in a Stream",
            topic: "Heap / Priority Queue",
            subtopic: "Min-Heap Stream",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/kth-largest-element-in-a-stream/")!,
            priority: 170
        ),
        Problem(
            title: "K Closest Points to Origin",
            topic: "Heap / Priority Queue",
            subtopic: "Euclidean Max-Heap",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/k-closest-points-to-origin/")!,
            priority: 171
        ),
        Problem(
            title: "Top K Frequent Elements",
            topic: "Heap / Priority Queue",
            subtopic: "Bucket Sort / Heap",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/top-k-frequent-elements/")!,
            priority: 172
        ),
        Problem(
            title: "Task Scheduler",
            topic: "Heap / Priority Queue",
            subtopic: "Frequency Math",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/task-scheduler/")!,
            priority: 173
        ),
        Problem(
            title: "Find Median from Data Stream",
            topic: "Heap / Priority Queue",
            subtopic: "Two Heaps",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-median-from-data-stream/")!,
            priority: 174
        ),
        Problem(
            title: "Smallest Range Covering K Lists",
            topic: "Heap / Priority Queue",
            subtopic: "Min-Heap Multiway",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/smallest-range-covering-k-lists/")!,
            priority: 175
        ),
        Problem(
            title: "Reorganize String",
            topic: "Heap / Priority Queue",
            subtopic: "Max-Heap Greedy",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/reorganize-string/")!,
            priority: 176
        ),
        Problem(
            title: "Assign Cookies",
            topic: "Greedy",
            subtopic: "Two Pointers Greedy",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/assign-cookies/")!,
            priority: 177
        ),
        Problem(
            title: "Lemonade Change",
            topic: "Greedy",
            subtopic: "Bill Tracking",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/lemonade-change/")!,
            priority: 178
        ),
        Problem(
            title: "Jump Game",
            topic: "Greedy",
            subtopic: "Max Reach",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/jump-game/")!,
            priority: 179
        ),
        Problem(
            title: "Jump Game II",
            topic: "Greedy",
            subtopic: "BFS / Reach Boundaries",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/jump-game-ii/")!,
            priority: 180
        ),
        Problem(
            title: "Gas Station",
            topic: "Greedy",
            subtopic: "Circuit Balance",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/gas-station/")!,
            priority: 181
        ),
        Problem(
            title: "Candy",
            topic: "Greedy",
            subtopic: "Two-Pass Sweep",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/candy/")!,
            priority: 182
        ),
        Problem(
            title: "Partition Labels",
            topic: "Greedy",
            subtopic: "Interval Extension",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/partition-labels/")!,
            priority: 183
        ),
        Problem(
            title: "Boats to Save People",
            topic: "Greedy",
            subtopic: "Two Pointers Pairing",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/boats-to-save-people/")!,
            priority: 184
        ),
        Problem(
            title: "Job Sequencing Problem",
            topic: "Greedy",
            subtopic: "Disjoint Sets / Slots",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/job-sequencing-problem-1587115620/1")!,
            priority: 185
        ),
        Problem(
            title: "Huffman Encoding",
            topic: "Greedy",
            subtopic: "Min-Heap Tree",
            difficulty: .hard,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/huffman-encoding3345/1")!,
            priority: 186
        ),
        Problem(
            title: "Merge Intervals",
            topic: "Intervals",
            subtopic: "Sorting + Merging",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/merge-intervals/")!,
            priority: 187
        ),
        Problem(
            title: "Insert Interval",
            topic: "Intervals",
            subtopic: "Linear Sweep",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/insert-interval/")!,
            priority: 188
        ),
        Problem(
            title: "Interval List Intersections",
            topic: "Intervals",
            subtopic: "Two Pointers Sweep",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/interval-list-intersections/")!,
            priority: 189
        ),
        Problem(
            title: "Minimum Arrows to Burst Balloons",
            topic: "Intervals",
            subtopic: "Sort by End",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-number-of-arrows-to-burst-balloons/")!,
            priority: 190
        ),
        Problem(
            title: "Meeting Rooms",
            topic: "Intervals",
            subtopic: "Sort & Overlap",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/meeting-rooms/")!,
            priority: 191
        ),
        Problem(
            title: "Meeting Rooms II",
            topic: "Intervals",
            subtopic: "Chronological Sweep",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/meeting-rooms-ii/")!,
            priority: 192
        ),
        Problem(
            title: "My Calendar I",
            topic: "Intervals",
            subtopic: "Segment Search",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/my-calendar-i/")!,
            priority: 193
        ),
        Problem(
            title: "Number of Islands",
            topic: "Graph BFS / DFS",
            subtopic: "Connected Components",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/number-of-islands/")!,
            priority: 194
        ),
        Problem(
            title: "Flood Fill",
            topic: "Graph BFS / DFS",
            subtopic: "Color Fill DFS",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/flood-fill/")!,
            priority: 195
        ),
        Problem(
            title: "Max Area of Island",
            topic: "Graph BFS / DFS",
            subtopic: "Grid DFS Area",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/max-area-of-island/")!,
            priority: 196
        ),
        Problem(
            title: "Rotting Oranges",
            topic: "Graph BFS / DFS",
            subtopic: "Multi-Source BFS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/rotting-oranges/")!,
            priority: 197
        ),
        Problem(
            title: "Surrounded Regions",
            topic: "Graph BFS / DFS",
            subtopic: "Boundary DFS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/surrounded-regions/")!,
            priority: 198
        ),
        Problem(
            title: "Pacific Atlantic Water Flow",
            topic: "Graph BFS / DFS",
            subtopic: "Two-Ocean Inflow",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/pacific-atlantic-water-flow/")!,
            priority: 199
        ),
        Problem(
            title: "Clone Graph",
            topic: "Graph BFS / DFS",
            subtopic: "HashMap DFS Clone",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/clone-graph/")!,
            priority: 200
        ),
        Problem(
            title: "Keys and Rooms",
            topic: "Graph BFS / DFS",
            subtopic: "Reachability DFS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/keys-and-rooms/")!,
            priority: 201
        ),
        Problem(
            title: "Word Ladder",
            topic: "Graph BFS / DFS",
            subtopic: "Shortest Path BFS",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/word-ladder/")!,
            priority: 202
        ),
        Problem(
            title: "Shortest Path in Binary Matrix",
            topic: "Graph BFS / DFS",
            subtopic: "8-Directional BFS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/shortest-path-in-binary-matrix/")!,
            priority: 203
        ),
        Problem(
            title: "Open the Lock",
            topic: "Graph BFS / DFS",
            subtopic: "BFS State Space",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/open-the-lock/")!,
            priority: 204
        ),
        Problem(
            title: "Evaluate Division",
            topic: "Graph BFS / DFS",
            subtopic: "Weighted Graph DFS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/evaluate-division/")!,
            priority: 205
        ),
        Problem(
            title: "Course Schedule",
            topic: "Topological Sort",
            subtopic: "Cycle Detection",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/course-schedule/")!,
            priority: 206
        ),
        Problem(
            title: "Course Schedule II",
            topic: "Topological Sort",
            subtopic: "Kahn's Algorithm",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/course-schedule-ii/")!,
            priority: 207
        ),
        Problem(
            title: "Find Eventual Safe States",
            topic: "Topological Sort",
            subtopic: "Terminal Nodes",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-eventual-safe-states/")!,
            priority: 208
        ),
        Problem(
            title: "Alien Dictionary",
            topic: "Topological Sort",
            subtopic: "Character Graph",
            difficulty: .hard,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/alien-dictionary/1")!,
            priority: 209
        ),
        Problem(
            title: "Find All Possible Recipes",
            topic: "Topological Sort",
            subtopic: "Supply Dependencies",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-all-possible-recipes-from-given-supplies/")!,
            priority: 210
        ),
        Problem(
            title: "Minimum Height Trees",
            topic: "Topological Sort",
            subtopic: "Leaf Trimming",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-height-trees/")!,
            priority: 211
        ),
        Problem(
            title: "Largest Color Value in a Directed Graph",
            topic: "Topological Sort",
            subtopic: "DAG DP",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/largest-color-value-in-a-directed-graph/")!,
            priority: 212
        ),
        Problem(
            title: "Number of Provinces",
            topic: "Union Find / DSU",
            subtopic: "Connected Components",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/number-of-provinces/")!,
            priority: 213
        ),
        Problem(
            title: "Redundant Connection",
            topic: "Union Find / DSU",
            subtopic: "Cycle Detection",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/redundant-connection/")!,
            priority: 214
        ),
        Problem(
            title: "Accounts Merge",
            topic: "Union Find / DSU",
            subtopic: "Email Graph",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/accounts-merge/")!,
            priority: 215
        ),
        Problem(
            title: "Make Network Connected",
            topic: "Union Find / DSU",
            subtopic: "Redundant Cables",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/number-of-operations-to-make-network-connected/")!,
            priority: 216
        ),
        Problem(
            title: "Most Stones Removed",
            topic: "Union Find / DSU",
            subtopic: "Coordinate Component",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/most-stones-removed-with-same-row-or-column/")!,
            priority: 217
        ),
        Problem(
            title: "Satisfiability of Equality Equations",
            topic: "Union Find / DSU",
            subtopic: "Variable Equality",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/satisfiability-of-equality-equations/")!,
            priority: 218
        ),
        Problem(
            title: "Network Delay Time",
            topic: "Dijkstra / Shortest Path",
            subtopic: "Standard Dijkstra",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/network-delay-time/")!,
            priority: 219
        ),
        Problem(
            title: "Path With Minimum Effort",
            topic: "Dijkstra / Shortest Path",
            subtopic: "Matrix Dijkstra",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/path-with-minimum-effort/")!,
            priority: 220
        ),
        Problem(
            title: "Cheapest Flights Within K Stops",
            topic: "Dijkstra / Shortest Path",
            subtopic: "Bellman-Ford / BFS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/cheapest-flights-within-k-stops/")!,
            priority: 221
        ),
        Problem(
            title: "Swim in Rising Water",
            topic: "Dijkstra / Shortest Path",
            subtopic: "Minimax Dijkstra",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/swim-in-rising-water/")!,
            priority: 222
        ),
        Problem(
            title: "Minimum Cost to Make at Least One Valid Path",
            topic: "Dijkstra / Shortest Path",
            subtopic: "0-1 BFS / Dijkstra",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-cost-to-make-at-least-one-valid-path-in-a-grid/")!,
            priority: 223
        ),
        Problem(
            title: "Number of Ways to Arrive at Destination",
            topic: "Dijkstra / Shortest Path",
            subtopic: "Dijkstra with Path Count",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/number-of-ways-to-arrive-at-destination/")!,
            priority: 224
        ),
        Problem(
            title: "Shortest Path in Weighted Undirected Graph",
            topic: "Dijkstra / Shortest Path",
            subtopic: "Path Tracking",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/shortest-path-in-weighted-undirected-graph/1")!,
            priority: 225
        ),
        Problem(
            title: "Min Cost to Connect All Points",
            topic: "MST",
            subtopic: "Kruskal / Prim",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/min-cost-to-connect-all-points/")!,
            priority: 226
        ),
        Problem(
            title: "Kruskal's Minimum Spanning Tree",
            topic: "MST",
            subtopic: "Union Find Edge Sort",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/minimum-spanning-tree/1")!,
            priority: 227
        ),
        Problem(
            title: "Prim's Minimum Spanning Tree",
            topic: "MST",
            subtopic: "Priority Queue Nodes",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/minimum-spanning-tree/1")!,
            priority: 228
        ),
        Problem(
            title: "Critical and Pseudo-Critical Edges in MST",
            topic: "MST",
            subtopic: "Kruskal Baseline",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-critical-and-pseudo-critical-edges-in-minimum-spanning-tree/")!,
            priority: 229
        ),
        Problem(
            title: "Optimize Water Distribution in a Village",
            topic: "MST",
            subtopic: "Virtual Node MST",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/optimize-water-distribution-in-a-village/")!,
            priority: 230
        ),
        Problem(
            title: "Climbing Stairs",
            topic: "1D DP",
            subtopic: "Fibonacci Pattern",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/climbing-stairs/")!,
            priority: 231
        ),
        Problem(
            title: "Min Cost Climbing Stairs",
            topic: "1D DP",
            subtopic: "Step Minimization",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/min-cost-climbing-stairs/")!,
            priority: 232
        ),
        Problem(
            title: "House Robber",
            topic: "1D DP",
            subtopic: "Take or Skip",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/house-robber/")!,
            priority: 233
        ),
        Problem(
            title: "House Robber II",
            topic: "1D DP",
            subtopic: "Circular Array DP",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/house-robber-ii/")!,
            priority: 234
        ),
        Problem(
            title: "Delete and Earn",
            topic: "1D DP",
            subtopic: "Frequency Array Robber",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/delete-and-earn/")!,
            priority: 235
        ),
        Problem(
            title: "Decode Ways",
            topic: "1D DP",
            subtopic: "Prefix Parsing",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/decode-ways/")!,
            priority: 236
        ),
        Problem(
            title: "Integer Break",
            topic: "1D DP",
            subtopic: "Product Maximization",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/integer-break/")!,
            priority: 237
        ),
        Problem(
            title: "Perfect Squares",
            topic: "1D DP",
            subtopic: "Coin Change Pattern",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/perfect-squares/")!,
            priority: 238
        ),
        Problem(
            title: "Unique Paths",
            topic: "Grid / 2D DP",
            subtopic: "Grid Traversal",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/unique-paths/")!,
            priority: 239
        ),
        Problem(
            title: "Unique Paths II",
            topic: "Grid / 2D DP",
            subtopic: "Obstacle Grid",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/unique-paths-ii/")!,
            priority: 240
        ),
        Problem(
            title: "Minimum Path Sum",
            topic: "Grid / 2D DP",
            subtopic: "Cost Minimization",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-path-sum/")!,
            priority: 241
        ),
        Problem(
            title: "Triangle",
            topic: "Grid / 2D DP",
            subtopic: "Bottom-up Triangle",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/triangle/")!,
            priority: 242
        ),
        Problem(
            title: "Dungeon Game",
            topic: "Grid / 2D DP",
            subtopic: "Reverse Grid DP",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/dungeon-game/")!,
            priority: 243
        ),
        Problem(
            title: "Cherry Pickup II",
            topic: "Grid / 2D DP",
            subtopic: "Dual Robot DP",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/cherry-pickup-ii/")!,
            priority: 244
        ),
        Problem(
            title: "Maximal Square",
            topic: "Grid / 2D DP",
            subtopic: "Matrix Expansion",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximal-square/")!,
            priority: 245
        ),
        Problem(
            title: "Minimum Falling Path Sum",
            topic: "Grid / 2D DP",
            subtopic: "Row-by-Row DP",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-falling-path-sum/")!,
            priority: 246
        ),
        Problem(
            title: "Longest Increasing Subsequence",
            topic: "DP Subsequences",
            subtopic: "Binary Search / DP",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-increasing-subsequence/")!,
            priority: 247
        ),
        Problem(
            title: "Number of Longest Increasing Subsequences",
            topic: "DP Subsequences",
            subtopic: "Count Matching LIS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/number-of-longest-increasing-subsequence/")!,
            priority: 248
        ),
        Problem(
            title: "Longest Bitonic Subsequence",
            topic: "DP Subsequences",
            subtopic: "LIS + LDS",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/longest-bitonic-subsequence0824/1")!,
            priority: 249
        ),
        Problem(
            title: "Largest Divisible Subset",
            topic: "DP Subsequences",
            subtopic: "Subset Reconstruction",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/largest-divisible-subset/")!,
            priority: 250
        ),
        Problem(
            title: "Russian Doll Envelopes",
            topic: "DP Subsequences",
            subtopic: "2D LIS",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/russian-doll-envelopes/")!,
            priority: 251
        ),
        Problem(
            title: "Longest String Chain",
            topic: "DP Subsequences",
            subtopic: "Predecessor Hash Map",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-string-chain/")!,
            priority: 252
        ),
        Problem(
            title: "Longest Arithmetic Subsequence",
            topic: "DP Subsequences",
            subtopic: "Difference Hash Map",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-arithmetic-subsequence/")!,
            priority: 253
        ),
        Problem(
            title: "Arithmetic Slices II",
            topic: "DP Subsequences",
            subtopic: "Subsequence Counter",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/arithmetic-slices-ii-subsequence/")!,
            priority: 254
        ),
        Problem(
            title: "Maximum Length of Pair Chain",
            topic: "DP Subsequences",
            subtopic: "Interval LIS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximum-length-of-pair-chain/")!,
            priority: 255
        ),
        Problem(
            title: "Wiggle Subsequence",
            topic: "DP Subsequences",
            subtopic: "Alternating Peaks",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/wiggle-subsequence/")!,
            priority: 256
        ),
        Problem(
            title: "0/1 Knapsack",
            topic: "Knapsack DP",
            subtopic: "Classic 0/1",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/0-1-knapsack-problem0945/1")!,
            priority: 257
        ),
        Problem(
            title: "Unbounded Knapsack",
            topic: "Knapsack DP",
            subtopic: "Multiple Inclusions",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/knapsack-with-duplicate-items4201/1")!,
            priority: 258
        ),
        Problem(
            title: "Target Sum",
            topic: "Knapsack DP",
            subtopic: "Subset Sum Partition",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/target-sum/")!,
            priority: 259
        ),
        Problem(
            title: "Partition Equal Subset Sum",
            topic: "Knapsack DP",
            subtopic: "Half-Sum Boolean",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/partition-equal-subset-sum/")!,
            priority: 260
        ),
        Problem(
            title: "Last Stone Weight II",
            topic: "Knapsack DP",
            subtopic: "Minimum Difference",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/last-stone-weight-ii/")!,
            priority: 261
        ),
        Problem(
            title: "Coin Change",
            topic: "Knapsack DP",
            subtopic: "Minimum Coins",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/coin-change/")!,
            priority: 262
        ),
        Problem(
            title: "Coin Change II",
            topic: "Knapsack DP",
            subtopic: "Combination Count",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/coin-change-ii/")!,
            priority: 263
        ),
        Problem(
            title: "Longest Common Subsequence",
            topic: "String DP",
            subtopic: "LCS Grid",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-common-subsequence/")!,
            priority: 264
        ),
        Problem(
            title: "Longest Palindromic Subsequence",
            topic: "String DP",
            subtopic: "Reverse LCS",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-palindromic-subsequence/")!,
            priority: 265
        ),
        Problem(
            title: "Edit Distance",
            topic: "String DP",
            subtopic: "Insert/Delete/Replace",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/edit-distance/")!,
            priority: 266
        ),
        Problem(
            title: "Distinct Subsequences",
            topic: "String DP",
            subtopic: "Prefix Matching",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/distinct-subsequences/")!,
            priority: 267
        ),
        Problem(
            title: "Interleaving String",
            topic: "String DP",
            subtopic: "2D Substring Matching",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/interleaving-string/")!,
            priority: 268
        ),
        Problem(
            title: "Regular Expression Matching",
            topic: "String DP",
            subtopic: "Wildcard Recursion",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/regular-expression-matching/")!,
            priority: 269
        ),
        Problem(
            title: "Word Break",
            topic: "String DP",
            subtopic: "Dictionary Lookup",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/word-break/")!,
            priority: 270
        ),
        Problem(
            title: "Single Number",
            topic: "Bit Manipulation",
            subtopic: "XOR Cancel",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/single-number/")!,
            priority: 271
        ),
        Problem(
            title: "Number of 1 Bits",
            topic: "Bit Manipulation",
            subtopic: "Hamming Weight",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/number-of-1-bits/")!,
            priority: 272
        ),
        Problem(
            title: "Counting Bits",
            topic: "Bit Manipulation",
            subtopic: "DP Bit Offsets",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/counting-bits/")!,
            priority: 273
        ),
        Problem(
            title: "Reverse Bits",
            topic: "Bit Manipulation",
            subtopic: "Bit Shifting",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/reverse-bits/")!,
            priority: 274
        ),
        Problem(
            title: "Missing Number",
            topic: "Bit Manipulation",
            subtopic: "XOR Index Sum",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/missing-number/")!,
            priority: 275
        ),
        Problem(
            title: "Sum of Two Integers",
            topic: "Bit Manipulation",
            subtopic: "Adder Logic",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/sum-of-two-integers/")!,
            priority: 276
        ),
        Problem(
            title: "Bitwise AND of Numbers Range",
            topic: "Bit Manipulation",
            subtopic: "Common Prefix",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/bitwise-and-of-numbers-range/")!,
            priority: 277
        ),
        Problem(
            title: "Minimum Bit Flips to Convert Number",
            topic: "Bit Manipulation",
            subtopic: "XOR Count",
            difficulty: .easy,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/minimum-bit-flips-to-convert-number/")!,
            priority: 278
        ),
        Problem(
            title: "Implement Trie",
            topic: "Trie",
            subtopic: "Prefix Tree",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/implement-trie-prefix-tree/")!,
            priority: 279
        ),
        Problem(
            title: "Design Add and Search Words",
            topic: "Trie",
            subtopic: "Trie with Wildcard",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/design-add-and-search-words-data-structure/")!,
            priority: 280
        ),
        Problem(
            title: "Replace Words",
            topic: "Trie",
            subtopic: "Root Replacement",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/replace-words/")!,
            priority: 281
        ),
        Problem(
            title: "Longest Word in Dictionary",
            topic: "Trie",
            subtopic: "Prefix Validation",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/longest-word-in-dictionary/")!,
            priority: 282
        ),
        Problem(
            title: "Maximum XOR of Two Numbers",
            topic: "Trie",
            subtopic: "Binary Bit Trie",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/maximum-xor-of-two-numbers-in-an-array/")!,
            priority: 283
        ),
        Problem(
            title: "Word Search II",
            topic: "Trie",
            subtopic: "Trie + Backtracking",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/word-search-ii/")!,
            priority: 284
        ),
        Problem(
            title: "Palindrome Pairs",
            topic: "Trie",
            subtopic: "Trie Palindrome Search",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/palindrome-pairs/")!,
            priority: 285
        ),
        Problem(
            title: "Bellman-Ford Algorithm",
            topic: "Advanced Graphs",
            subtopic: "Negative Cycles",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/distance-from-the-source-bellman-ford-algorithm/1")!,
            priority: 286
        ),
        Problem(
            title: "Floyd-Warshall Algorithm",
            topic: "Advanced Graphs",
            subtopic: "All-Pairs Shortest Path",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/implementing-floyd-warshall2042/1")!,
            priority: 287
        ),
        Problem(
            title: "Strongly Connected Components — Kosaraju",
            topic: "Advanced Graphs",
            subtopic: "Two-Pass DFS",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/strongly-connected-components-kosarajus-algo/1")!,
            priority: 288
        ),
        Problem(
            title: "Critical Connections / Bridges",
            topic: "Advanced Graphs",
            subtopic: "Tarjan's Bridges",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/critical-connections-in-a-network/")!,
            priority: 289
        ),
        Problem(
            title: "Articulation Points",
            topic: "Advanced Graphs",
            subtopic: "Tarjan's Cut Vertices",
            difficulty: .hard,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/articulation-point-1/1")!,
            priority: 290
        ),
        Problem(
            title: "Reconstruct Itinerary",
            topic: "Advanced Graphs",
            subtopic: "Hierholzer's Eulerian",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/reconstruct-itinerary/")!,
            priority: 291
        ),
        Problem(
            title: "Eulerian Path and Circuit",
            topic: "Advanced Graphs",
            subtopic: "Degree Invariance",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/euler-circuit-and-path/1")!,
            priority: 292
        ),
        Problem(
            title: "Find the City With Smallest Number of Neighbors",
            topic: "Advanced Graphs",
            subtopic: "Floyd-Warshall Reach",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/find-the-city-with-the-smallest-number-of-neighbors-at-a-threshold-distance/")!,
            priority: 293
        ),
        Problem(
            title: "Range Sum Query – Mutable",
            topic: "Segment Tree / Fenwick Tree",
            subtopic: "Point Update Range Sum",
            difficulty: .medium,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/range-sum-query-mutable/")!,
            priority: 294
        ),
        Problem(
            title: "Range Minimum Query Using Segment Tree",
            topic: "Segment Tree / Fenwick Tree",
            subtopic: "Range Minimum Query",
            difficulty: .medium,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/range-minimum-query/1")!,
            priority: 295
        ),
        Problem(
            title: "Lazy Propagation / Range Updates",
            topic: "Segment Tree / Fenwick Tree",
            subtopic: "Lazy Tree Update",
            difficulty: .hard,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/range-sum-query/1")!,
            priority: 296
        ),
        Problem(
            title: "Count of Smaller Numbers After Self",
            topic: "Segment Tree / Fenwick Tree",
            subtopic: "Fenwick Inversion Count",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/count-of-smaller-numbers-after-self/")!,
            priority: 297
        ),
        Problem(
            title: "Count of Range Sum",
            topic: "Segment Tree / Fenwick Tree",
            subtopic: "Merge Sort / Fenwick",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/count-of-range-sum/")!,
            priority: 298
        ),
        Problem(
            title: "Create Sorted Array Through Instructions",
            topic: "Segment Tree / Fenwick Tree",
            subtopic: "Fenwick Rank Insertion",
            difficulty: .hard,
            platform: .leetCode,
            url: URL(string: "https://leetcode.com/problems/create-sorted-array-through-instructions/")!,
            priority: 299
        ),
        Problem(
            title: "2D Binary Indexed Tree / Range Sum",
            topic: "Segment Tree / Fenwick Tree",
            subtopic: "2D Fenwick Tree",
            difficulty: .hard,
            platform: .geeksForGeeks,
            url: URL(string: "https://www.geeksforgeeks.org/problems/2d-binary-indexed-tree/1")!,
            priority: 300
        ),
    ].map { problem in
        // Stable across processes and curriculum reordering. Keep duplicate URLs
        // in different topics independently trackable.
        let key = problem.topic + "\u{0}" + problem.title
        var bytes = Array(SHA256.hash(data: Data(key.utf8)).prefix(16))
        bytes[6] = (bytes[6] & 0x0f) | 0x50
        bytes[8] = (bytes[8] & 0x3f) | 0x80
        let id = UUID(uuid: (bytes[0], bytes[1], bytes[2], bytes[3],
                             bytes[4], bytes[5], bytes[6], bytes[7],
                             bytes[8], bytes[9], bytes[10], bytes[11],
                             bytes[12], bytes[13], bytes[14], bytes[15]))
        return Problem(id: id, title: problem.title, topic: problem.topic,
                       subtopic: problem.subtopic, difficulty: problem.difficulty,
                       platform: problem.platform, url: problem.url,
                       isCompleted: problem.isCompleted, priority: problem.priority)
    }
}
