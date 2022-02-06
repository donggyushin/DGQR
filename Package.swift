// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DGQR",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "DGQR",
            targets: ["DGQR"]),
    ],
    targets: [
        .target(
            name: "DGQR",
            dependencies: []),
        .testTarget(
            name: "DGQRTests",
            dependencies: ["DGQR"]),
    ],
    swiftLanguageVersions: [.v5]
)
