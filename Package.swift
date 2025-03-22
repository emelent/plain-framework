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
         checksum:"0e0b2b3d62abeba871fd0e1500190478c568cd0ce099dd1cdd997103b18e92cc")
   ]
)
