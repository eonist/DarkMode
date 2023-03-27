// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "DarkMode",
    platforms: [.iOS(.v12)], // update to ios15? and swift 5.6?
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
