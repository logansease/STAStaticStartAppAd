//
//  STAStaticStartAppAd.m
//  CatchPhrase
//
//  Created by Logan Sease on 1/20/15.
//
//

#import "STAStaticStartAppAd.h"

@implementation STAStaticStartAppAd

static STAStaticStartAppAd *commonAd = nil;

#pragma mark Singleton Methods
+ (id)commonAd {
    @synchronized(self) {
        if (commonAd == nil){
            commonAd = [[self alloc] init];
        }
        
    }
    return commonAd;
}

-(id)init
{
    if(self = [super init])
    {
        [self loadAdWithDelegate:self];
    }
    return self;
}

+(void)setupWithAppId:(NSString*)appId andDevId:(NSString*)devId
{
    STAStartAppSDK* sdk = [STAStartAppSDK sharedInstance];
    sdk.appID = @"210361800";
    sdk.devID = @"110338714";
    [self commonAd];
}

+(void)showAd
{
    [commonAd showAd];
}

- (void) didCloseAd:(STAAbstractAd*)ad
{
    commonAd = [[STAStaticStartAppAd alloc] init];
}
- (void) didClickAd:(STAAbstractAd*)ad
{
    commonAd = [[STAStaticStartAppAd alloc] init];
}

@end
