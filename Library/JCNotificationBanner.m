#import "JCNotificationBanner.h"

@implementation JCNotificationBanner

@synthesize title;
@synthesize message;
@synthesize timeout;
@synthesize tapHandler;
@synthesize iconImage;

- (JCNotificationBanner*) initWithTitle:(NSString*)_title
                                message:(NSString*)_message
                             tapHandler:(JCNotificationBannerTapHandlingBlock)_tapHandler {
  
    return [self initWithTitle:_title message:_message iconImage:@"" timeout:5.0 tapHandler:_tapHandler];
}

- (JCNotificationBanner*) initWithTitle:(NSString*)_title
                                message:(NSString*)_message
                                 iconImage:(NSString *)_iconImage
                             tapHandler:(JCNotificationBannerTapHandlingBlock)_tapHandler {
    
    return [self initWithTitle:_title message:_message iconImage:_iconImage timeout:5.0 tapHandler:_tapHandler];
}

- (JCNotificationBanner*) initWithTitle:(NSString*)_title
                                message:(NSString*)_message
                                 iconImage:(NSString*)_iconImage
                                timeout:(NSTimeInterval)_timeout
                             tapHandler:(JCNotificationBannerTapHandlingBlock)_tapHandler {
  
  self = [super init];
  if (self) {
    self.title = _title;
    self.message = _message;
    self.timeout = _timeout;
    self.tapHandler = _tapHandler;
    self.iconImage = _iconImage;
  }
  return self;
}

@end
