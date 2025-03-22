// swift-tools-version:5.3
import PackageDescription

let package = Package(
   name: "plain",
   platforms: [
     .iOS(.v14),
   ],
   products: [
      .library(name: "plain", targets: ["plain"])
   ],
   targets: [
      .binaryTarget(
         name: "plain",
         url: "https://github.com/emelent/plain-framework/releases/download/0.0.6/plain.xcframework.zip",
         checksum:"d7faa86e88a05916d162389e85fe3f00bdeff605b2b24c695b8d32e9a195e38e")
   ]
)
