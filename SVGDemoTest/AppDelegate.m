//
//  AppDelegate.m
//  SVGDemoTest
//
//  Created by 纵昂 on 2019/5/1.
//  Copyright © 2019 纵昂. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    /**
     近期公司的移动端项目的icon都在使用svg(矢量图).svg在放大或者缩小的情况下,图像的图形质量不会有所损失.所以与大家分享一下两种iOS展示svg的方法.
     一:svg就是XML,可以使用UIWebView/WKWebView进行加载.
     UIWebView
     NSString *svgPath = [[NSBundle mainBundle] pathForResource:@"svg名称" ofType:@"svg"];
     NSData *svgData = [NSData dataWithContentsOfFile:svgPath];
     NSString *reasourcePath = [[NSBundle mainBundle] resourcePath];
     NSURL *baseUrl = [[NSURL alloc] initFileURLWithPath:reasourcePath isDirectory:true];
     UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
     [webView loadData:svgData MIMEType:@"image/svg+xml" textEncodingName:@"UTF-8" baseURL:baseUrl];
     
     WKWebView
     NSString *svgPath = [[NSBundle mainBundle] pathForResource:@"svg名称" ofType:@"svg"];
     NSData *svgData = [NSData dataWithContentsOfFile:svgPath];
     NSString *reasourcePath = [[NSBundle mainBundle] resourcePath];
     NSURL *baseUrl = [[NSURL alloc] initFileURLWithPath:reasourcePath isDirectory:true];
     WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
     [webView loadData:svgData MIMEType:@"image/svg+xml" characterEncodingName:@"UTF-8" baseURL:baseUrl];
     
     **/
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
