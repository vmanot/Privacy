// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Privacy",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
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
        .package(url: "git@github.com:vmanot/Merge.git", .branch("master")),
        .package(url: "git@github.com:SwiftUIX/SwiftUIX.git", .branch("master")),
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
    ],
    swiftLanguageVersions: [
        .version("5.1")
    ]
)
