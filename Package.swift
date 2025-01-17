// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterPseudo",
    products: [
        .library(name: "TreeSitterPseudo", targets: ["TreeSitterPseudo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterPseudo",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterPseudoTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterPseudo",
            ],
            path: "bindings/swift/TreeSitterPseudoTests"
        )
    ],
    cLanguageStandard: .c11
)
