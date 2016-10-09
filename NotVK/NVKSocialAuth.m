//
//  NVKSocialAuth.m
//  NotVK
//
//  Created by Danil on 10/9/16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "NVKSocialAuth.h"
#import <VK-ios-sdk/VKSdk.h>

@interface NVKSocialAuth () <VKSdkDelegate, VKSdkUIDelegate>

@end

@implementation NVKSocialAuth

- (void)startLogin {
    VKSdk *sdkInstance = [VKSdk initializeWithAppId:@"5660854"];
    [sdkInstance registerDelegate:self];
    [sdkInstance setUiDelegate:self];
    NSArray *SCOPE = @[@"friends", @"email"];
    
    [VKSdk wakeUpSession:SCOPE completeBlock:^(VKAuthorizationState state, NSError *err) {
        if (state == VKAuthorizationAuthorized) {
            // authorized
        } else {
            [VKSdk authorize:SCOPE];
        }
    }];
}

+ (instancetype)sharedInstance {
    static NVKSocialAuth *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [self new];
        
    });
    return sharedInstance;
}

#pragma mark - VKSdkDelegate

- (void)vkSdkAccessAuthorizationFinishedWithResult:(VKAuthorizationResult *)result {
    5
}

- (void)vkSdkUserAuthorizationFailed {
    
}

#pragma mark - VKSdkUIDelegate 

- (void)vkSdkShouldPresentViewController:(UIViewController *)controller {
    
}

- (void)vkSdkNeedCaptchaEnter:(VKError *)captchaError {
    
}

@end
