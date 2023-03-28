// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "DarkMode",
    platforms: [.iOS(.v12), .macOS(.v12)],
    products: [
        .library(
            name: "DarkMode",
            targets: ["DarkMode"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DarkMode",
            dependencies: [])
    ]
)
