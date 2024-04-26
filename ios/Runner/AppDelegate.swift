// // import UIKit
// // import Flutter
// //
// // @UIApplicationMain
// // @objc class AppDelegate: FlutterAppDelegate {
// //   override func application(
// //     _ application: UIApplication,
// //     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
// //   ) -> Bool {
// //     GeneratedPluginRegistrant.register(with: self)
// //     return super.application(application, didFinishLaunchingWithOptions: launchOptions)
// //   }
// // }
// import UIKit
// import Flutter
//
// @UIApplicationMain
// @objc class AppDelegate: FlutterAppDelegate {
//     private let DEVICE_INFO_CHANNEL = "com.example.device_info_channel"
//
//     override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//         let flutterViewController: FlutterViewController = window?.rootViewController as! FlutterViewController
//
//         let deviceInfoChannel = FlutterMethodChannel(name: DEVICE_INFO_CHANNEL, binaryMessenger: flutterViewController.binaryMessenger)
//
//         deviceInfoChannel.setMethodCallHandler { [weak self] (call: FlutterMethodCall, result: FlutterResult) in
//             if call.method == "getDeviceInfo" {
//                 self?.getDeviceInfo(result: result)
//             } else {
//                 result(FlutterMethodNotImplemented)
//             }
//         }
//
//         GeneratedPluginRegistrant.register(with: self)
//         return super.application(application, didFinishLaunchingWithOptions: launchOptions)
//     }
//
//     private func getDeviceInfo(result: FlutterResult) {
//         let deviceType = UIDevice.current.userInterfaceIdiom == .phone ? "Phone" : "Tablet"
//         let deviceModel = UIDevice.current.model
//         let deviceBrand = "Apple" // You can't get the brand name on iOS
//         let osVersion = UIDevice.current.systemVersion
//         let batteryLevel = UIDevice.current.batteryLevel
//
//         let deviceInfo: [String: Any] = [
//             "deviceType": deviceType,
//             "deviceModel": deviceModel,
//             "deviceBrand": deviceBrand,
//             "osVersion": osVersion,
//             "batteryLevel": batteryLevel
//         ]
//
//         result(deviceInfo)
//     }
// }