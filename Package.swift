// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "HMSSDK",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "HMSSDK",
            targets: ["HMSSDK", "WebRTC", "HMSSDKDependencies"])
    ],
    dependencies: [
        .package(name: "HMSAnalyticsSDK", url: "https://github.com/100mslive/100ms-ios-analytics-sdk", from: "0.0.2"),
    ],
    targets: [
        .binaryTarget(
            name: "HMSSDK",
            url: "https://github.com/100mslive/100ms-ios-sdk-staging/releases/download/1.8.4/HMSSDK.xcframework.zip",
            checksum: "bb3322890f0d91aff340a1dffe9bd3ea77b6d7a05783df5e25848810a9daaaec"
        ),
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/100mslive/webrtc-ios/releases/download/1.0.5118/WebRTC.xcframework.zip",
            checksum: "f80dde0250940647633340627f1a2aec83d8d53889e79ab34d0d168bcb16d253"
        ),
        .target(name: "HMSSDKDependencies", dependencies: ["HMSAnalyticsSDK"], path: "dependencies")
    ]
)
