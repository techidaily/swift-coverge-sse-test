# coverge-sse-test

A description of this package.

## 学习创建过程

[https://medium.com/quick-code/lets-build-a-command-line-app-in-swift-328ce274f1cc](https://medium.com/quick-code/lets-build-a-command-line-app-in-swift-328ce274f1cc)

## 创建工程

```bash
$ swift package init --type executable
```

## 构建工程

```bash
$ swift build
```

## 运行工程

```bash
$ swift run
```

## 添加项目依赖

see: `Package.swift`

```swift
// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
// -> 关于 Swift 包管理工具 （Swift Package）
// -> See: WWDC 2018：细说 Swift 包管理工具 (Swift Package Manager)
// -> link: https://juejin.im/post/5b1f536a5188257d9b79dbcf

import PackageDescription

let package = Package(
    name: "coverge-sse-test",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        // -> 支持导入包的方式: 查看github 的tags 来获得最新版本号
        .package(url: "https://github.com/IBM-Swift/SwiftyJSON.git", .upToNextMajor(from: "17.0.5")),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", .upToNextMajor(from: "1.0.0")),
        .Package(url: "https://github.com/PerfectlySoft/Perfect-CURL.git", from: "4.0.1" ),
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        // -> 导入包后，可以指定目标的依赖关系
        .target(
            name: "coverge-sse-test",
            dependencies: [
                "CryptoSwift",
                "SwiftyJSON"
            ]),
        .testTarget(
            name: "coverge-sse-testTests",
            dependencies: ["coverge-sse-test"]),
    ]
)

```