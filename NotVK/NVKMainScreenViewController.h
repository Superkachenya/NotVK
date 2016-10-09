//
//  ViewController.h
//  NotVK
//
//  Created by Danil on 9/10/16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NVKRootViewController.h"

static NSString *const toMainScreen = @"toMainScreen";

@interface NVKMainScreenViewController : NVKRootViewController

@property (strong, nonatomic) NSString *testLogin;
@property (strong, nonatomic) NSString *testPass;

@end

