load("@gazelle//:def.bzl", "gazelle", "gazelle_binary")

# gazelle:exclude .build

gazelle_binary(
    name = "gazelle_bin",
    languages = [
        "@rules_swift_package_manager//gazelle",
    ],
)

gazelle(
    name = "update_build_files",
    data = [
        "@swift_deps_info//:swift_deps_index",
    ],
    extra_args = [
        "-swift_dependency_index=$(location @swift_deps_info//:swift_deps_index)",
    ],
    gazelle = ":gazelle_bin",
)
