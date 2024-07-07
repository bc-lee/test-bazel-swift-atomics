// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "test-bazel-swift-atomics",
  dependencies: [
    .package(url: "https://github.com/apple/swift-atomics.git", .upToNextMajor(from: "1.2.0"))
  ],
  targets: [
    .executableTarget(
      name: "test-bazel-swift-atomics",
      dependencies: [
        .product(name: "Atomics", package: "swift-atomics")
      ],
      exclude: ["BUILD"],
      linkerSettings: [
        .unsafeFlags(["-v"])
      ]
    )
  ]
)
