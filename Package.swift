// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpenTok",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OpenTok",
            targets: ["OpenTok", "OpenTokDependencies"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // TODO: use remote binary target, not local
        .binaryTarget(name: "OpenTok",
                      path: "OpenTok/OpenTok.xcframework"),
        .target(name: "OpenTokDependencies",
                path: "Sources",
                linkerSettings: [
                    .linkedFramework("Network"),
                    .linkedFramework("VideoToolbox"),
                    .linkedLibrary("c++")
                ]),
        .testTarget(name: "OpenTokTests",
                    dependencies: ["OpenTok", "OpenTokDependencies"])
    ]
)
