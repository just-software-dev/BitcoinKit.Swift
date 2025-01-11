// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "BitcoinKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "BitcoinKit",
            targets: ["BitcoinKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/just-software-dev/BitcoinCore.Swift.git", branch: "master"),
        .package(url: "https://github.com/just-software-dev/Hodler.Swift.git", branch: "master"),
        .package(url: "https://github.com/just-software-dev/HdWalletKit.Swift.git", branch: "main"),
        .package(url: "https://github.com/just-software-dev/HsToolKit.Swift.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "BitcoinKit",
            dependencies: [
                .product(name: "BitcoinCore", package: "BitcoinCore.Swift"),
                .product(name: "Hodler", package: "Hodler.Swift"),
                .product(name: "HdWalletKit", package: "HdWalletKit.Swift"),
                .product(name: "HsToolKit", package: "HsToolKit.Swift"),
            ]
        ),
    ]
)
