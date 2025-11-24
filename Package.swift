// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftXMLExample",
    platforms: [
        .iOS(.v16),
        .macOS(.v15),
        .tvOS(.v16),
        .watchOS(.v9),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.6.2"),
        .package(url: "https://github.com/stefanspringer1/Pipeline.git", from: "1.0.32"),
        .package(url: "https://github.com/stefanspringer1/PipelineLogging.git", from: "0.0.7"),
        .package(url: "https://github.com/stefanspringer1/SwiftXML.git", from: "12.0.5"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "SwiftXMLExample",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                "Pipeline",
                "PipelineLogging",
                "SwiftXML",
            ]
        ),
    ]
)
