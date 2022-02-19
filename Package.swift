// swift-tools-version:5.3

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.7.0-beta.1"
    static let checksum: String = "72a81b680afdac132fefb5a6ef32a246b4933d7ae167dd90a20bead496437a82"
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
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GoogleCastSDK-ios-no-bluetooth",
            url: "https://github.com/SRGSSR/GoogleCastSDK-ios-no-bluetooth/releases/download/\(PackageMetadata.version)/GoogleCastSDK-ios-no-bluetooth.xcframework.zip",
            checksum: PackageMetadata.checksum
        )
    ]
)
