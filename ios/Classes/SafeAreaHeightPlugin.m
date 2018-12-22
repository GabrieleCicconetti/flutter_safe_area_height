#import "SafeAreaHeightPlugin.h"
#import <safe_area_height/safe_area_height-Swift.h>

@implementation SafeAreaHeightPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSafeAreaHeightPlugin registerWithRegistrar:registrar];
}
@end
