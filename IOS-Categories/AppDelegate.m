//
//  AppDelegate.m
//  iOS-Categories (https://github.com/shaojiankui/iOS-Categories)
//
//  Created by Jakey on 14/12/15.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import "NSString+Encrypt.h"
#import "AppDelegate.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
+(AppDelegate*)APP{
    return (AppDelegate*)[[UIApplication sharedApplication] delegate];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSString * xx = @"5AR21MLRpqLFNxTPnNjjQPsknrIT1wRVcQpjkOOFpAdmjaMXzXx6tYCEJhkT2O9A487o2Mqy6pp88dsBRJvov8u9Hhu_oboldmQm4Q48eLYNtPN5duYe3GDLQ6LuTTGiaYZLh9OjESBkiV0mBICjUr1WYWxuAZtmpCZofkdbONGCm75G7aeC0Si6vwwm-CI5sUjKCxrVzIsXi31_zk5nqg";
    
    NSData *data = [NSData data];
    NSString *yy = [xx decryptedWithAESUsingKey:@"e289b93050d0ea8d0cbfb296f46281b4081c7a9db807797fdd9a44f9264b31b2" andIV:@"lB6x692zczsqYMkk+IEl1w=="];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    self.rooViewController = [[RootViewController alloc] init];
    self.navgationController = [[UINavigationController alloc]initWithRootViewController:self.rooViewController];
    self.window.rootViewController = self.navgationController;
    [self.window makeKeyAndVisible];
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
