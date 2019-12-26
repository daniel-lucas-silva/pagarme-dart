#import "PagarmePlugin.h"
#if __has_include(<pagarme/pagarme-Swift.h>)
#import <pagarme/pagarme-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pagarme-Swift.h"
#endif

@implementation PagarmePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPagarmePlugin registerWithRegistrar:registrar];
}
@end
