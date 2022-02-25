// swift-tools-version:5.3

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.7.0-beta.2"
    static let checksum: String = "93e3915d63bd24cafc5026219f348b8472b82ed6831490a89868b69732138e19"
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
