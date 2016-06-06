//
//  AppDelegate.m
//  SVA
//
//  Created by Zeacone on 15/12/8.
//  Copyright © 2015年 huawei. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SVAWelcomeViewController.h"
#import "SVALaunchViewController.h"

#import "MMAlertView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    SVALaunchViewController *launchController = [SVALaunchViewController new];
    self.window.rootViewController = launchController;
    
    NSArray *inheritParameter = @[@"0",
                                  @"0.1",
                                  @"0.6",
                                  @"15",
                                  @"0.04",
                                  @"0.02",
                                  @"0.3",
                                  @"1",
                                  @"8.0",
                                  @"5",
                                  @"10"];
    if (![[NSUserDefaults standardUserDefaults] objectForKey:@"inherit"]) {
        [[NSUserDefaults standardUserDefaults] setObject:inheritParameter forKey:@"inherit"];
    }
    
   //  Override point for customization after application launch. 11
    if (![[NSUserDefaults standardUserDefaults] boolForKey:@"privacyKey"]) {
        
        self.window.rootViewController = [[SVALaunchViewController alloc] init];
        
    }
    else{
        ViewController *vc = [[ViewController alloc]init];
        UINavigationController *nc = [[UINavigationController alloc]initWithRootViewController:vc];
        self.window.rootViewController = nc;
    }
    
    // Some global setting.
    [[UINavigationBar appearance] setBarTintColor:colorFromRGB(41, 108, 254, 1.0)];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setTranslucent:NO];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
