// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "DarkMode",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "DarkMode",
            targets: ["DarkMode"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "DarkMode",
            dependencies: []),
        .testTarget(
            name: "DarkModeTests",
            dependencies: ["DarkMode"])
    ]
)
