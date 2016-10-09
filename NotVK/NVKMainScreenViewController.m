//
//  ViewController.m
//  NotVK
//
//  Created by Danil on 9/10/16.
//  Copyright © 2016 Cleveroad. All rights reserved.
//

#import "NVKMainScreenViewController.h"

@interface NVKMainScreenViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLoginLabel;
@property (weak, nonatomic) IBOutlet UILabel *testPassLabel;

@end

@implementation NVKMainScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.testLoginLabel.text = self.testLogin;
    self.testPassLabel.text = self.testPass;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
