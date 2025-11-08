// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdKitBinary",
    platforms: [.iOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AdKit",
            targets: ["AdKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AdKitBinary"),
        .testTarget(
            name: "AdKitBinaryTests",
            dependencies: ["AdKitBinary"]
        ),
        .binaryTarget(name: "AdKit", url: "https://github.com/vamsikrishna7909/AdKit/releases/download/1.0.0/AdKit.xcframework.zip", checksum: "1be1d679b8dabf3d0358195106bee1306f0602aec9cdc3ef0f3496ea2053d9fc")
    ]
)
