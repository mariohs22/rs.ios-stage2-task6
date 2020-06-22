//
//  AppDelegate.m
//  rs.ios-stage2-task6
//
//  Created by Siarhei Burakouski on 6/23/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "AppDelegate.h"
#import "StartScreen.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    StartScreen *startVC = [StartScreen new];
    self.navigationController = [[UINavigationController alloc] initWithRootViewController:startVC];
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
