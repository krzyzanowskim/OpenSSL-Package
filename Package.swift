// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "OpenSSL",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_15),
        .tvOS(.v12),
        .custom("xros", versionString: "1.0")
    ],
    products: [
        .library(
            name: "OpenSSL",
            targets: ["OpenSSL"]),
    ],
    targets: [
        .binaryTarget(
            name: "OpenSSL",
            url: "https://github.com/krzyzanowskim/OpenSSL/releases/download/3.1.5003/OpenSSL.xcframework.zip",
            checksum: "8be5e5fc9856d65103f9cb3704edbeaa0e518f5101d6428b1730575d00522359"
        )
    ]
)