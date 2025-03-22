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
         url: "https://github.com/emelent/plain-framework/releases/download/0.0.3/plain.xcframework.zip",
         checksum:"36f67cea87c4f22f242d95cede09620caaea10c9043c9f1b11c3223665f18766")
   ]
)
