// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "EmbyKit",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14),
        .macOS(.v11),
    ],
    products: [
        .library(name: "EmbyKit", targets: ["EmbyKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/dduan/Just", branch: "master")
    ],
    targets: [
        .target(name: "EmbyKit", dependencies: ["Just"], path: "Sources"),
    ]
)
