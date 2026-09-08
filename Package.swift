// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DSATrackerMac",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(
            name: "DSATrackerMac",
            targets: ["DSATrackerMac"]
        )
    ],
    targets: [
        .executableTarget(
            name: "DSATrackerMac",
            path: "Sources/DSATrackerMac"
        )
    ]
)
