// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Spine",
    products: [
        .library(
            name: "Spine",
            targets: ["Spine"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
            from: "5.0.0"
        ),
        .package(
            url: "https://github.com/Thomvis/BrightFutures.git",
            from: "8.0.0"
        )
    ],
    targets: [
        .target(
            name: "Spine",
            dependencies: ["SwiftyJSON", "BrightFutures"]
        ),
        .testTarget(
            name: "SpineTests",
            dependencies: ["Spine"],
            resources: [.copy("Fixtures")]
        ),
    ]
)
