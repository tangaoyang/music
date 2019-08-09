//
//  AppDelegate.m
//  网易云音乐
//
//  Created by cinderella on 2019/7/25.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourthViewController.h"
#import "FifthViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //显示window
    [self.window makeKeyAndVisible];
    
    //创建控制器
    FirstViewController *vcFirst = [[FirstViewController alloc] init];
    
    SecondViewController *vcSecond = [[SecondViewController alloc] init];
    
    ThreeViewController *vcThird = [[ThreeViewController alloc] init];
    
    FourthViewController *vcFourth = [[FourthViewController alloc] init] ;
    
    FifthViewController *vcFifth = [[FifthViewController alloc] init] ;
    
    vcFirst.view.backgroundColor = [UIColor whiteColor];
    vcSecond.view.backgroundColor = [UIColor whiteColor];
    vcThird.view.backgroundColor = [UIColor whiteColor];
    vcFourth.view.backgroundColor = [UIColor whiteColor];
    vcFifth.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:vcFirst] ;
    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vcSecond] ;
    UINavigationController *nav3 = [[UINavigationController alloc ]initWithRootViewController:vcThird] ;
    UINavigationController *nav4 = [[UINavigationController alloc ]initWithRootViewController:vcFourth] ;
    UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:vcFifth] ;
    
    //创建分栏控制器
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    //创建一个控制器数组对象
    //将所有的要被分栏控制器管理的对象添加到数组中
    NSArray *arrayVC = [NSArray arrayWithObjects:nav1, nav2, nav3, nav4, nav5, nil] ;
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为根视图控制器
    self.window.rootViewController = tbController;
    
    //设置分栏控制器的透明度
    tbController.tabBar.translucent = NO;
    
    //修改字体颜色
    tbController.view.tintColor = [UIColor redColor] ;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
