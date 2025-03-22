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
         url: "https://github.com/emelent/plain-framework/releases/download/0.0.4/plain.xcframework.zip",
         checksum:"008ae2b5da8ff726c874ecde6d753210429b1fef5d793942f9c01a83a23f28dc")
   ]
)
