#import <Foundation/Foundation.h>

typedef void (^JCNotificationBannerTapHandlingBlock)();

@interface JCNotificationBanner : NSObject

@property (nonatomic) NSString* title;
@property (nonatomic) NSString* message;
@property (nonatomic) NSString* iconImage;
@property (nonatomic, assign) NSTimeInterval timeout;
@property (nonatomic, copy) JCNotificationBannerTapHandlingBlock tapHandler;

- (JCNotificationBanner*) initWithTitle:(NSString*)title
                                message:(NSString*)message
                             tapHandler:(JCNotificationBannerTapHandlingBlock)tapHandler;

- (JCNotificationBanner*) initWithTitle:(NSString*)title
                                message:(NSString*)message
                                 iconImage:(NSString*)iconImage
                             tapHandler:(JCNotificationBannerTapHandlingBlock)tapHandler;

- (JCNotificationBanner*) initWithTitle:(NSString*)title
                                message:(NSString*)message
                                timeout:(NSTimeInterval)timeout
                             tapHandler:(JCNotificationBannerTapHandlingBlock)tapHandler;
@end
