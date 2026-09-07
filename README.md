<div align="center">

#  DSA Tracker for macOS

### A native, interactive desktop widget to master 300 curated Data Structures & Algorithms problems across 34 topics.

[![macOS 14.0+](https://img.shields.io/badge/macOS-14.0%2B%20Sonoma%20%7C%20Sequoia-000000?style=for-the-badge&logo=apple&logoColor=white)](https://apple.com/macos)
[![Swift 5.9](https://img.shields.io/badge/Swift-5.9%2B-FA7343?style=for-the-badge&logo=swift&logoColor=white)](https://swift.org)
[![WidgetKit](https://img.shields.io/badge/WidgetKit-Interactive-8A2BE2?style=for-the-badge&logo=apple&logoColor=white)](https://developer.apple.com/documentation/widgetkit)
[![Release](https://img.shields.io/badge/Release-v1.0.0-2EA44F?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Niru-26016/dsa-tracker-macos/releases/tag/v1.0.0)
[![Architecture](https://img.shields.io/badge/Arch-Universal%20(arm64%20%2B%20x86__64)-informational?style=for-the-badge&logo=apple)](https://github.com/Niru-26016/dsa-tracker-macos/releases/tag/v1.0.0)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

<br/>

[✨ Features](#-key-features) • [📸 Preview](#-preview) • [🖥️ Sizes](#-supported-widget-sizes) • [🚀 Quick Install](#-quick-install) • [📂 Project Structure](#-project-structure) • [🛠️ Build from Source](#️-build-from-source) • [📄 License](#-license)

</div>

---

## 📸 Preview

<div align="center">
  <table border="0">
    <tr>
      <td align="center" width="50%">
        <strong>Large (4×4) Widget</strong><br/>
        <em>Single-column view with topic selector, topic progress bar & pinned pagination</em><br/><br/>
        <img src="docs/screenshots/large-widget.png" alt="DSA Tracker Large Widget (4x4)" width="380"/>
      </td>
      <td align="center" width="50%">
        <strong>Extra Large (8×4) Widget</strong><br/>
        <em>Expansive 2-column view displaying up to 12 problems simultaneously</em><br/><br/>
        <img src="docs/screenshots/extra-large-widget.png" alt="DSA Tracker Extra Large Widget (8x4)" width="480"/>
      </td>
    </tr>
  </table>
</div>

---

## ✨ Key Features

- **🎯 300 Curated Problems (1 to 300 Sequential Roadmap)**:
  - Complete interview preparation coverage: Arrays, Hashing, Two Pointers, Sliding Window, Monotonic Stack, Binary Trees, BST, Graphs, Dijkstra, Dynamic Programming, Segment Trees, and more.
  - Every problem includes difficulty badges (`Easy`, `Medium`, `Hard`), subtopics, and clickable links to **LeetCode** and **GeeksforGeeks**.
- **⚡ Interactive Desktop Checkboxes**:
  - Check off solved problems directly from your desktop wallpaper with immediate visual feedback via native `AppIntents`.
- **🗂️ Two In-Widget Topic Selection Modes**:
  - **`•••` Category Grid**: Tap the topic pill at the top of the widget canvas to reveal a 34-category grid and jump directly to any topic.
  - **`<` and `>` Chevrons**: Cycle sequentially through topics with one click.
- **📊 Topic-Wise Visual Progress Bar**:
  - The gradient progress bar tracks your completion for the **currently selected category** (fills to 100% when all questions in that category are checked).
  - Next to the category name, view `X/Y done (Z%)` for that specific topic.
  - The top-right pill tracks overall progress across the entire **300-question roadmap** (`X/300 • Z%`).
- **📌 Pinned, Static 6-Problem Layout**:
  - Displays exactly **6 problems per page** in Large, or **12 problems** in Extra Large.
  - The header and pagination footer (`[< Prev]`, `Page X of Y`, `[Next >]`) are **permanently pinned** in place. The layout never shrinks, resizes, or shifts padding.
- **🔕 100% Pure Headless Design (`LSUIElement: true`)**:
  - Zero floating windows, zero dock clutter, and zero background menu bar items.
  - Toggling checkboxes updates the widget in-place without launching any app windows.
  - Clicking a problem title opens it directly in your default web browser (Safari, Chrome, Arc, etc.).
- **🔒 Code-First & Offline Storage**:
  - All questions are defined in [`StarterProblems.swift`](Sources/DSATrackerMac/Models/StarterProblems.swift). Changes in code take effect immediately while preserving your existing checkmarks.
  - 100% offline and private. Data is saved locally via thread-safe POSIX file-locked storage (`~/Library/Containers/com.dsatracker.mac.widget/.../problems.json`). No accounts, servers, or telemetry.

---

## 🖥️ Supported Widget Sizes

| Size | Grid Footprint | Capacity | Best For |
| :--- | :---: | :---: | :--- |
| **Large** *(Default)* | 4×4 Grid | 6 problems / page | Daily focus on desktop wallpaper with difficulty badges, subtopics, and pinned footer. |
| **Extra Large** | 8×4 Grid | 12 problems / page | Power users on wide displays showing two simultaneous 6-item columns. |

---

## 🚀 Quick Install

1. **Download & Extract**: Download [**`DSA-Tracker-macOS-v1.0.0.zip`**](https://github.com/Niru-26016/dsa-tracker-macos/releases/tag/v1.0.0) from the Latest Release and double-click to extract **`DSA Tracker.app`**.
2. **Move to Applications** *(Recommended)*: Drag **`DSA Tracker.app`** into your **`/Applications`** folder.
3. **Add to Desktop**:
   - Right-click anywhere on your desktop wallpaper and choose **Edit Widgets...**
   - In the gallery sidebar, search for **DSA Tracker**.
   - Drag the **Large** or **Extra Large** widget onto your desktop and click **Done**!

> [!NOTE]
> The widget is automatically discovered by macOS as soon as you unzip the app. If macOS ever needs a manual cache refresh, run this single line in Terminal:
> ```bash
> /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f "/Applications/DSA Tracker.app" && pluginkit -a "/Applications/DSA Tracker.app/Contents/PlugIns/DSATrackerWidgetExtension.appex" && pluginkit -e use -i com.dsatracker.mac.widget && killall chronod NotificationCenter 2>/dev/null || true
> ```

---

## 📂 Project Structure

```text
dsa-tracker-macos/
│
├── 📁 Sources/
│   │
│   ├── 📁 DSATrackerMac/                        # Headless macOS host application
│   │   ├── 📄 DSATrackerMacApp.swift            # Host lifecycle (pure accessory, LSUIElement: true)
│   │   │
│   │   └── 📁 Models/
│   │       ├── 📄 Problem.swift                 # Core Problem model, Difficulty & Platform enums, Topic lists
│   │       ├── 📄 StarterProblems.swift         # 300 curated questions (Source of Truth)
│   │       └── 📄 TrackerStore.swift            # POSIX file-locked state management & ProblemPage math
│   │
│   └── 📁 DSATrackerWidget/                     # Native WidgetKit extension
│       ├── 📄 DSATrackerWidget.swift            # StaticConfiguration views (Large & Extra Large)
│       └── 📄 ToggleProblemIntent.swift         # Interactive AppIntents (checkboxes, topic picker, paging)
│
├── 📁 Tests/
│   └── 📁 DSATrackerMacTests/
│       └── 📄 TrackerStoreTests.swift           # 17 unit tests (persistence, migration, concurrency)
│
├── 📁 Support/
│   ├── 📄 Info.plist                            # Host app metadata & LSUIElement flag
│   ├── 📄 WidgetInfo.plist                      # WidgetKit extension configuration
│   ├── 📄 DSATrackerMac.entitlements            # Host sandbox permissions
│   └── 📄 DSATrackerWidgetExtension.entitlements# Widget sandbox permissions
│
├── 📁 scripts/
│   ├── 📄 bundle_app.sh                         # Universal (arm64 + x86_64) release compiler & codesign
│   └── 📄 package_release.sh                    # Universal ZIP archive packager
│
├── 📁 docs/
│   └── 📁 screenshots/                          # Preview image assets for README
│       └── 📄 README.md                         # Screenshot guidelines
│
├── 📁 .github/
│   └── 📁 workflows/
│       └── 📄 ci.yml                            # GitHub Actions automated test & build workflow
│
├── 🛠️ DSATracker.xcodeproj/                     # Checked-in Xcode project (ready to build in Xcode)
├── ⚙️ project.yml                               # Declarative XcodeGen project specification
├── 📦 Package.swift                             # Swift Package Manager manifest (for swift test)
├── 📋 CHANGELOG.md                              # Chronological release log
├── 📜 LICENSE                                   # MIT License
└── 📖 README.md                                 # Complete documentation
```

---

## 🛠️ Build from Source

### Prerequisites
- macOS 14.0 (Sonoma) or later
- Xcode 15.0 or later (with command line tools installed)
- No Node.js, npm, or external dependencies required

### Build Steps

```bash
# Clone the repository
git clone https://github.com/Niru-26016/dsa-tracker-macos.git
cd dsa-tracker-macos

# Run unit tests
swift test

# Build and package universal (arm64 + x86_64) release
bash scripts/package_release.sh
```

The universal app bundle is generated at `build/Build/Products/Release/DSA Tracker.app`, and the verified release archive is placed in `dist/`.

---

## 💡 How to Customize Problems in Code

The curriculum is completely code-first. To add, edit, or customize problems:

1. Open [`Sources/DSATrackerMac/Models/StarterProblems.swift`](Sources/DSATrackerMac/Models/StarterProblems.swift).
2. Modify or add entries using the `Problem` model:
   ```swift
   Problem(
       title: "Two Sum",
       topic: "Hashing",
       subtopic: "Hash Map Lookup",
       difficulty: .easy,
       platform: .leetCode,
       url: URL(string: "https://leetcode.com/problems/two-sum/")!,
       priority: 22
   )
   ```
3. Rebuild with `bash scripts/bundle_app.sh`.
4. Your changes take effect immediately on your desktop, and existing checkmarks are automatically retained.

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.
