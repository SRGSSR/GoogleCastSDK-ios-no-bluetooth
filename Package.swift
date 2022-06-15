// swift-tools-version:5.3

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.7.1-beta.1"
    static let checksum: String = "37c734ea6113dcde0f98da3ed62fcb2f711a517418228dd2e30ba7470455f127"
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
