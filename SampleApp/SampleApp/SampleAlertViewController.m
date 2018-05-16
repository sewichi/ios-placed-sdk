//
//  SampleAlertViewController.m
//  SampleApp
//
//  Created by Stanislav Stasiuk on 5/9/18.
//  Copyright © 2018 Placed. All rights reserved.
//

#import "SampleAlertViewController.h"

@interface SampleAlertViewController ()

@end

@implementation SampleAlertViewController

- (instancetype)init {
    self = [super init];
    if (self) {
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
- (IBAction)accept:(id)sender {
    [NSUserDefaults.standardUserDefaults setBool:YES forKey:kTermsAndPolicyAcceptedKey];
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)dismiss:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)showTermsOfService:(id)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"https://www.placed.com/terms-of-service"];
    [UIApplication.sharedApplication openURL:url options:@{} completionHandler:nil];
}

- (IBAction)showPrivacyPolicy:(id)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"https://www.placed.com/privacy-policy"];
    [UIApplication.sharedApplication openURL:url options:@{} completionHandler:nil];
}

@end
