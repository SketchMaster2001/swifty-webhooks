// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Swifty-Webhook",
    products: [
        .library(
            name: "Swifty-Webhook",
            targets: ["Swifty-Webhook"]),
    ],
    targets: [
        .target(
            name: "Swifty-Webhook",
            dependencies: []
        )
    ]
)
