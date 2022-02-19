GoogleCastSDK-ios-no-bluetooth XCFramework
==================

XCFramework binaries are currently not provided by Google. Until they are this repository provides XCFrameworks for versions we use at SRG SSR, with a Swift Package Manager manifest for easy integration in projects. Binaries are currently packaged for iOS, and downloaded from Google links.

## Integration

Use [Swift Package Manager](https://swift.org/package-manager) directly [within Xcode](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app). You can also declare the library as a dependency of another one directly in the associated `Package.swift` manifest.

## Generation

1. Download the binary from the [GoogleCastSDK manual setup](https://developers.google.com/cast/docs/ios_sender#manual_setup), `Dynamic without  Guest Mode`version.
2. Unzip it and rename to `GoogleCastSDK-ios-no-bluetooth.xcframework`.
3. Zip it: `zip -r GoogleCastSDK-ios-no-bluetooth.xcframework.zip GoogleCastSDK-ios-no-bluetooth.xcframework -x "*.DS_Store" -x "__MACOSX"`
4. Move the zip file to this repository folder.

### Make the XCFramework available

To make the framework available:

1. Update the `Package.swift` in this repository with the framework version number.
2. Run `swift package compute-checksum GoogleCastSDK-ios-no-bluetooth.xcframework.zip` and update the `Package.swift` in this repository with the new checksum. 
3. Commit the changes on `master` and create a corresponding tag.
4. Push the commit and the tag to GitHub.
5. Attach the binary to the tag on GitHub.

Do not commit the binaries in the repository, as this would slow done checkouts made by SPM as the repository grows.