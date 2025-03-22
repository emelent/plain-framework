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
         url: "https://github.com/emelent/plain-framework/releases/download/0.0.2/plain.xcframework.zip",
         checksum:"23c6b9b377d876c7bb80c8f96833e2cdc2b034306e7063145dc1617e96154b2a")
   ]
)
