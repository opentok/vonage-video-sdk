// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "VonageClientSDKVideo",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "VonageClientSDKVideo",
            targets: ["OpenTok", "VonageClientSDKVideo"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "OpenTok",
                      url: "https://s3.amazonaws.com/artifact.tokbox.com/rel/otkit-ios-sdk-xcframework/OpenTok-iOS-2.27.2.zip",
                      checksum: "7915f04a56f0aee267525304c5cd7204bd202d02f1185fc540a5158001cbae51"),
        .target(name: "VonageClientSDKVideo",
                path: "Sources",
                resources: [
                    .process("VonageClientSDKVideo/Resources/selfie_segmentation.tflite")
                ],
                linkerSettings: [
                    .linkedFramework("Network"),
                    .linkedFramework("VideoToolbox"),
                    .linkedFramework("Accelerate"),
                    .linkedLibrary("c++")
                ]),
        .testTarget(name: "VonageClientSDKVideoTests",
                    dependencies: ["VonageClientSDKVideo"])
    ]
)
