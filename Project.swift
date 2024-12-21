import ProjectDescription

let project = Project(
    name: "Blueprint",
    targets: [
        .target(
            name: "Blueprint",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Blueprint",
            deploymentTargets: .iOS("16.4"),
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["Blueprint/Sources/**"],
            resources: ["Blueprint/Resources/**"],
            dependencies: [
                .external(name: "NeedleFoundation"),
            ]
        ),
        .target(
            name: "BlueprintTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.BlueprintTests",
            deploymentTargets: .iOS("16.4"),
            infoPlist: .default,
            sources: ["Blueprint/Tests/**"],
            resources: [],
            dependencies: [.target(name: "Blueprint")]
        ),
    ]
)
