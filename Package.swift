// swift-tools-version:5.0
import Foundation
import PackageDescription

let package = Package(
  name: "BSSnapshotTesting",
  platforms: [
    .iOS(.v11),
    .macOS(.v10_10),
    .tvOS(.v10)
  ],
  products: [
    .library(
      name: "BSSnapshotTesting",
      targets: ["BSSnapshotTesting"]),
  ],
  targets: [
    .target(
      name: "BSSnapshotTesting",
      dependencies: []),
    .testTarget(
      name: "BSSnapshotTestingTests",
      dependencies: ["BSSnapshotTesting"]),
  ]
)

if ProcessInfo.processInfo.environment.keys.contains("PF_DEVELOP") {
  package.dependencies.append(
    contentsOf: [
      .package(url: "https://github.com/yonaskolb/XcodeGen.git", .exact("2.15.1")),
    ]
  )
}
