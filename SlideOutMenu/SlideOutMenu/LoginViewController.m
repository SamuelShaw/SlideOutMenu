//
//  LoginViewController.m
//  SlideOutMenu
//
//  Created by Samuel Shaw on 3/6/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "LoginViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    CGRect theRect = CGRectMake((self.view.frame.size.width/2)-(200/2), 100, 200, 40);
    
    theRect = CGRectMake((self.view.frame.size.width/2)-(200/2), 150, 200, 40);
    
    [self loginToService:SIFacebook
   withSignInButtonImage:[UIImage imageNamed:@"socialfb"]
       atCoordinateSpace:theRect withCompletionHandler:^(NSDictionary *userInfo) {
           NSLog(@"Facebook Id:%@",[userInfo objectForKey:@"userId"]);
       }];
    
    theRect = CGRectMake((self.view.frame.size.width/2)-(200/2), 200, 200, 40);
    
    [self loginToService:SIGoogle
   withSignInButtonImage:[UIImage imageNamed:@"socialgg"]
       atCoordinateSpace:theRect withCompletionHandler:^(NSDictionary *userInfo) {
           NSLog(@"Google Id:%@",[userInfo objectForKey:@"userId"]);
           
       }];
}


//- (IBAction)facebookButtonPressed:(id)sender
//{
//    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
//    [login
//     logInWithReadPermissions: @[@"public_profile"]
//     fromViewController:self
//     handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
//         if (error) {
//             NSLog(@"Process error");
//         } else if (result.isCancelled) {
//             NSLog(@"Cancelled");
//         } else {
//             NSLog(@"Logged in with Facebook");
//             [self performSegueWithIdentifier:@"fbSuccessSegue" sender:sender];
//         }
//     }];
//}

@end
