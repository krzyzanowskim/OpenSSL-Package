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
            url: "https://github.com/krzyzanowskim/OpenSSL/releases/download/3.1.5004/OpenSSL.xcframework.zip",
            checksum: "9b9f5579cd7e1e3c22cae3d63b1647f3f7358367ae39515904a3d6fb083d0db3"
        )
    ]
)