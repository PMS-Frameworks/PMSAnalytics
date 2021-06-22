// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PMSAnalytics",
    platforms: [.iOS(.v11), .macOS(.v10_12)],
    products: [
        .library(
            name: "PMSAnalytics",
            targets: ["PMSAnalytics"]),
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.1.0"),
    ],
    targets: [
        .target(
            name: "PMSAnalytics",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "Firebase", condition: .when(platforms: [.iOS])),
                .product(name: "FirebaseCrashlytics", package: "Firebase", condition: .when(platforms: [.iOS])),
                .product(name: "FirebaseDynamicLinks", package: "Firebase", condition: .when(platforms: [.iOS])),
            ],
            path: "PMSAnalytics/Classes"),
    ]
)
