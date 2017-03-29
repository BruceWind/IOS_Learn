//
//  BaseController.h
//  ios_helloworld
//
//  Created by wei on 2017/3/28.
//  Copyright © 2017年 wei. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface BaseController : UIViewController

//alert 显示弹窗
- (void) toast:(NSString *) title :(NSString *) str;

//取得资源文件
-(NSString *)getStr:(NSString *)key;

//打印日志
-(void) logPrint:(NSString *)str;

//取得当前日志TAG：类名
-(NSString *) getTag;

//返回title
-(NSString *)getTitle;

//换行
-(void) printLn;

//跳转
-(void)jump:(UIViewController *)vc;

// 销毁当前页面：命名模仿android
-(void)finish;

//回到首页
-(void)backToHome;

@end
