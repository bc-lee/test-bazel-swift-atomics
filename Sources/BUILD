load("@build_bazel_rules_swift//swift:swift.bzl", "swift_binary")

swift_binary(
    name = "test-bazel-swift-atomics",
    srcs = ["main.swift"],
    linkopts = [
        "-v",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@swiftpkg_swift_atomics//:Atomics",
    ],
)

swift_binary(
    name = "test-bazel-swift-atomics-alt",
    srcs = ["main.swift"],
    linkopts = [
        "-v",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@swift_atomics//:Atomics",
    ],
)
