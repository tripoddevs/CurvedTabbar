// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CurvedTabbar",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CurvedTabbar",
            targets: ["CurvedTabbar"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CurvedTabbar", dependencies: []),
    ]
)
