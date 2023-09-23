// swift-tools-version:5.6
import PackageDescription // Import the PackageDescription module

// Define the package
let package = Package(
    name: "DarkMode", // Set the name of the package
    platforms: [.iOS(.v12), .macOS(.v12)], // Set the supported platforms
    products: [
        .library(
            name: "DarkMode", // Set the name of the library product
            targets: ["DarkMode"]) // Set the target for the library product
    ],
    dependencies: [], // Set the package dependencies
    targets: [
        .target(
            name: "DarkMode", // Set the name of the target
            dependencies: []) // Set the dependencies for the target
    ]
)