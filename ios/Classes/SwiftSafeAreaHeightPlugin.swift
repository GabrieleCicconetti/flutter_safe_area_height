import Flutter
import UIKit

public class SwiftSafeAreaHeightPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "safe_area_height", binaryMessenger: registrar.messenger())
    let instance = SwiftSafeAreaHeightPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "getSafeAreaHeightTop" {

              self.getSafeAreaHeightTop(result: result)

              } else if call.method == "getSafeAreaHeightBottom" {

                                   self.getSafeAreaHeightBottom(result: result)

                                   } else {
                result(FlutterMethodNotImplemented)
                return
              }
  }
  private func getSafeAreaHeightTop(result: FlutterResult) {

      if #available(iOS 11.0, *) {
          let window = UIApplication.shared.keyWindow
          let topPadding = window?.safeAreaInsets.top
          let bottomPadding = window?.safeAreaInsets.bottom
          result(topPadding)
      } else {
          result(0)
      }
    }
    private func getSafeAreaHeightBottom(result: FlutterResult) {

          if #available(iOS 11.0, *) {
              let window = UIApplication.shared.keyWindow
              let topPadding = window?.safeAreaInsets.top
              let bottomPadding = window?.safeAreaInsets.bottom
              result(bottomPadding)
          } else {
              result(0)
          }
        }
}
