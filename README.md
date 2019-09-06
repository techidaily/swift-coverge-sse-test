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

import PackageDescription

let package = Package(
    name: "coverge-sse-test",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "coverge-sse-test",
            dependencies: []),
        .testTarget(
            name: "coverge-sse-testTests",
            dependencies: ["coverge-sse-test"]),
    ]
)
```