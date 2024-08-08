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
                      url:"https://s3.amazonaws.com/artifact.tokbox.com/pr/opentok-ios-sdk/8330/OpenTok-iOS-2.29.0-preview.8330.zip",
                      checksum: "ebf3d24d209aee74e859a29859cb192aa39397b35b327253434d19a7547fc106"),
        .target(name: "VonageClientSDKVideo",
                path: "Sources",
                resources: [
                    .process("VonageClientSDKVideo/Resources/selfie_segmentation.tflite"),
                    .copy("VonageClientSDKVideo/Resources/PrivacyInfo.xcprivacy")
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
