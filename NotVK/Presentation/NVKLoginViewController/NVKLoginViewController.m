//
//  NVKLoginViewController.m
//  NotVK
//
//  Created by Danil on 9/17/16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "NVKLoginViewController.h"
#import "NVKMainScreenViewController.h"
#import <VK-ios-sdk/VKSdk.h>

@interface NVKLoginViewController ()

@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation NVKLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    VKSdk 
}

- (IBAction)actionLoginPressed:(id)sender {
    [self performSegueWithIdentifier:toMainScreen sender:self];
}



#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:toMainScreen]) {
//        NVKMainScreenViewController *mainVC = segue.destinationViewController;
//        mainVC.testLogin = self.loginTextField.text;
//        mainVC.testPass = self.passwordTextField.text;
//    }
}


@end
