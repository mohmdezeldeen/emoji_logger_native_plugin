#import "EmpjiLoggerNativePlugin.h"
#if __has_include(<empji_logger_native/empji_logger_native-Swift.h>)
#import <empji_logger_native/empji_logger_native-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "empji_logger_native-Swift.h"
#endif

@implementation EmpjiLoggerNativePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftEmpjiLoggerNativePlugin registerWithRegistrar:registrar];
}
@end
