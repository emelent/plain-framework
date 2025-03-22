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
         url: "https://github.com/emelent/plain-framework/releases/download/0.0.5/plain.xcframework.zip",
         checksum:"df872cb78b2f346d8f517078d24be580c3bc32390f203620b6e9227f75097913")
   ]
)
