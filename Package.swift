// swift-tools-version:5.6
import PackageDescription

let package = Package( // Define a new package
    name: "DarkMode", // Set the package name to "DarkMode"
    platforms: [.iOS(.v12), .macOS(.v12)], // Set the supported platforms to iOS 12 and macOS 10.12
    products: [ // Define the products of the package
        .library(
            name: "DarkMode", // Set the name of the library product to "DarkMode"
            targets: ["DarkMode"]) // Set the targets of the library product to the "DarkMode" target
    ],
    dependencies: [], // Set the dependencies of the package to an empty array
    targets: [ // Define the targets of the package
        .target(
            name: "DarkMode", // Set the name of the target to "DarkMode"
            dependencies: []) // Set the dependencies of the target to an empty array
    ]
)