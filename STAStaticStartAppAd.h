//
//  STAStaticStartAppAd.h
//  CatchPhrase
//
//  Created by Logan Sease on 1/20/15.
//
//

#import <StartApp/StartApp.h>

@interface STAStaticStartAppAd : STAStartAppAd <STADelegateProtocol>

+(void)showAd;
+(void)setupWithAppId:(NSString*)appId andDevId:(NSString*)devId;
@end
