//
//  AppDelegate.m
//  ConnectionTest
//
//  Created by 熊绎 on 2019/11/27.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic,strong) UILabel* show;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    创建UIWindow对象，并将该UIWindow初始化为屏幕相同大小
    self.window =[[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    设置UIWindow的颜色
    self.window.backgroundColor = [UIColor whiteColor];
//    创建一个UIViewController对象
    UIViewController* controller = [[UIViewController alloc] init];
//    让该程序的窗口加载并显示与viewController视图控制器关联的用户界面
    self.window.rootViewController = controller;
//    创建一个UIView对象
    UIView* rootView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    设置controller显示rootView控件
    controller.view = rootView;
//    创建一个系统风格按钮
    UIButton* button = [UIButton buttonWithType:UIButtonTypeSystem];
//    设置按钮大小
    button.frame = CGRectMake(120, 100, 80, 40);
//    为按钮设置文本
    [button setTitle:@"确定" forState:UIControlStateNormal];
//    将按钮添加到rootView
    [rootView addSubview:button];
//    创建一个UILabel对象
    self.show = [[UILabel alloc] initWithFrame:CGRectMake(60, 40, 180, 30)];
//    将UILabel添加到rootView控件中
    [rootView addSubview:self.show];
//    设置UILabel默认显示的文本
    self.show.text = @"初始文本";
    self.show.backgroundColor = [UIColor grayColor];
//    为按钮的触碰事件处理方法
    [button addTarget:self action:@selector(tappedHandler:) forControlEvents:UIControlEventTouchUpInside];
//    将该UIWindow对象设为主窗口并显示出来
    [self.window makeKeyAndVisible];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}

-(void) tappedHandler:(UIButton*) sender{
    self.show.text = @"开始学习iOS吧！";
}

@end
