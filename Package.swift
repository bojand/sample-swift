// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "SampleSwift",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "SampleSwift",
            dependencies: ["vapor"],
            path: "./Sources")
    ]
)