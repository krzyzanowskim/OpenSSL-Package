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
            url: "https://github.com/krzyzanowskim/OpenSSL/releases/download/3.3.3001/OpenSSL.xcframework.zip",
            checksum: "bd02bfeb7a01b63a5b210e3327b7eac3887badb73137f3ddc37de504e6555cfb"
        )
    ]
)