// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUICustomTagListView",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "SwiftUICustomTagListView",
            targets: ["SwiftUICustomTagListView"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUICustomTagListView",
            dependencies: []),
        .testTarget(
            name: "SwiftUICustomTagListViewTests",
            dependencies: ["SwiftUICustomTagListView"]),
    ]
)
