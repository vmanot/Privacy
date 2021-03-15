// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Privacy",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "Privacy",
            targets: ["Privacy"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/vmanot/Merge.git", .branch("master")),
        .package(url: "https://github.com/SwiftUIX/SwiftUIX.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Privacy",
            dependencies: [
                "Merge",
                "SwiftUIX"
            ],
            path: "Sources"
        ),
    ]
)
