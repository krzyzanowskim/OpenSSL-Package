// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "OpenSSL",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15),
        .tvOS(.v12),
        .watchOS(.v8),
        .custom("xros", versionString: "1.3")
    ],
    products: [
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL"]),
    ],
    targets: [
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/krzyzanowskim/OpenSSL/releases/download/3.3.2000/OpenSSL.xcframework.zip",
            checksum: "41d034ea1c075bfa74048e851358a550996c286de8230d1df39f137b06235c87"
        )
    ]
)