// swift-tools-version:5.3

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.8.1"
    static let checksum: String = "4f6193b2b009c57d71531de72facad7e52aefbe722824ab4fbcc3eca1ba9b648"
}

let package = Package(
    name: "GoogleCastSDK-ios-no-bluetooth",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "GoogleCastSDK-ios-no-bluetooth",
            targets: ["GoogleCastSDK-ios-no-bluetooth"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleCastSDK-ios-no-bluetooth",
            url: "https://github.com/SRGSSR/GoogleCastSDK-ios-no-bluetooth/releases/download/\(PackageMetadata.version)/GoogleCastSDK-ios-no-bluetooth.xcframework.zip",
            checksum: PackageMetadata.checksum
        )
    ]
)
