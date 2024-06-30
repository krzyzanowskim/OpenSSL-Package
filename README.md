# OpenSSL-Package

OpenSSL [Swift Package Manager](https://swift.org/package-manager/) package for iOS, macOS, tvOS, and visionOS. A complete solution to OpenSSL. The package comes with precompiled libraries and includes a script to build newer versions if necessary.

## SwiftPM

This repository exists to vendor OpenSSL.xcframework as SwiftPM package.
The binary is built as part of the main repository: https://github.com/krzyzanowskim/OpenSSL

## Installation

### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/krzyzanowskim/OpenSSL-Package.git", from: "3.1.5006")
]
```

and then as a dependency for the Package target utilizing OpenSSL:

```swift
.target(
    name: "MyApp",
    dependencies: [
        .product(name: "OpenSSL", package: "OpenSSL-Package")
    ]
),
```

### Authors

[Marcin Krzyżanowski](https://krzyzanowskim.com)
