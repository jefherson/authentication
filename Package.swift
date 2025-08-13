// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Authentication",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Authentication", targets: ["Authentication"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Authentication", dependencies: []),
        .testTarget(name: "AuthenticationTests", dependencies: ["Authentication"]),
    ]
)
