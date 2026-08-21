// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "xcrmint",
    platforms: [
        .macOS("26.0"),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "1.8.2")),
        .package(url: "https://github.com/tuist/XcodeProj.git", .upToNextMajor(from: "9.13.0")),
    ],
    targets: [
        .target(
            name: "xcrmint",
            dependencies: [
                "XcodeProj",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
    ]
)
