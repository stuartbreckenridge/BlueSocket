// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

#if os(Linux) || os(macOS) || os(iOS) || os(tvOS)
let package = Package(
    name: "BlueSocket",
    products: [
        .library(
            name: "Socket",
            targets: ["BlueSocket"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BlueSocket",
            dependencies: [],
            exclude: ["BlueSocket.xcodeproj", "BlueSocket.xcworkspace", "README.md", "Sources/Info.plist", "Sources/Socket.h"]
        ),
        .testTarget(
            name: "SocketTests",
            dependencies: ["BlueSocket"]
        ),
    ]
)
#else
fatalError("Unsupported OS")
#endif



/**
 * Copyright IBM Corporation and the Kitura project authors 2017-2020
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/
