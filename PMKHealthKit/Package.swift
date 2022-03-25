// swift-tools-version:5.0

import PackageDescription

let pkg = Package(name: "PMKHealthKit")
pkg.products = [
    .library(name: "PMKHealthKit", targets: ["PMKHealthKit"]),
]
pkg.dependencies = [
    .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.8.3")
]
pkg.swiftLanguageVersions = [.v4, .v4_2, .v5]

let target: Target = .target(name: "PMKHealthKit")
target.path = "Sources"

target.dependencies = [
    "PromiseKit"
]

pkg.targets = [target]

pkg.platforms = [
   .macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
]
