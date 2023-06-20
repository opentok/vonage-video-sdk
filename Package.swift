// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VonageClientSDKVideo",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "VonageClientSDKVideo",
            targets: ["OpenTok", "VonageClientSDKVideo"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "OpenTok",
            url: "https://s3.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/OpenTok-iOS-2.25.2.zip",
            checksum: "a7036a343b0099f9c0f0aecc6dc6c3325a23533a61289a589524fcd0b6b81433"
        ),
        .target(
            name: "VonageClientSDKVideo",
            dependencies: ["OpenTok"],
            path: "Sources",
            resources: [
                .process("selfie_segmentation.tflite")
            ],
            linkerSettings: [
                .linkedFramework("Network"),
                .linkedFramework("VideoToolbox"),
                .linkedFramework("Accelerate"),
                .linkedLibrary("c++")
            ]
        ),
        .testTarget(
            name: "VonageClientSDKVideoTests",
            dependencies: ["VonageClientSDKVideo"]
        )
    ]
)
