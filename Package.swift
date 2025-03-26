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
            url: "https://github.com/krzyzanowskim/OpenSSL/releases/download/3.3.3000/OpenSSL.xcframework.zip",
            checksum: "9b8e572e048978952fc6c9864a256a369637f0bbf10f0c58a703b9c001215b2f"
        )
    ]
)