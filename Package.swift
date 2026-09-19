// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-windowsfoundation",
    products: [
        .library(name: "WindowsFoundation", type: .dynamic, targets: ["WindowsFoundation"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/mutle/swift-cwinrt",
            revision: "a5988c9ec83d9ae1f1a4cd83051127f625ff60f7"
        ),
    ],
    targets: [
        .target(
            name: "WindowsFoundation",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
            ]
        ),
        .testTarget(
            name: "WindowsFoundationTests",
            dependencies: ["WindowsFoundation"]
        ),
    ]
)
