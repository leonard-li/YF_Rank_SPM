// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_Rank",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_Rank",
            targets: ["YF_Rank_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Auth_SPM.git", 
            from: "2.6.2"
        )
    ],
    targets: [
        .target(
            name: "YF_Rank_Target",
            dependencies: [
                "YF_Rank_Binary"
                .product(name: "YF_Auth", package: "YF_Auth_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_Rank_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/rank/1.1.7/YFRanking.xcframework.zip",
            checksum: "66279926bb5061f0c004e1ea212435d60d5d978ee35fe4e5948f50818cab50ab"
        )
    ]
)