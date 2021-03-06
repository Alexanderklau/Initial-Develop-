//
//  AppDelegate.m
//  纯代码开发UI
//
//  Created by lwb on 16/5/4.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property UILabel *show;


@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    UIViewController *controller = [[UIViewController alloc]init];
    self.window.rootViewController = controller;
    UIView *rootview = [[UIView alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    controller.view = rootview;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(120, 100, 80, 40);
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [rootview addSubview:button];
    self.show = [[UILabel alloc]initWithFrame:CGRectMake(60, 40, 180, 30)];
    [rootview addSubview:self.show];
    self.show.text = @"First txt";
    self.show.backgroundColor = [UIColor grayColor];
    [button addTarget:self action:@selector(clickHandler:) forControlEvents:UIControlEventTouchUpInside];
    [self.window makeKeyAndVisible];
    return YES;
    
    
    // Override point for customization after application launch.
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
-(void)clickHandler:(id)sender
{
    self.show.text= @"Fk,bitch!";
}
@end
