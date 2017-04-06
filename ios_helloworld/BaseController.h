//
//  BaseController.h
//  ios_helloworld
//
//  Created by wei on 2017/3/28.
//  Copyright © 2017年 wei. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "CoreLogger.h"

@interface BaseController : UIViewController{

@protected CoreLogger * logger;
    
}
//alert 显示弹窗
- (void) toast:(NSString *) str;

//取得资源文件
-(NSString *)getStr:(NSString *)key;


//取得资源文件
-(UIImage *)getImg:(UIImage *)key;

//打印日志
-(void) logPrint:(NSString *)str;

//取得当前日志TAG：类名
-(NSString *) getTag;

-(CGFloat)getNavigationHeight;



-(CGFloat)getScreenHeight;


-(CGFloat)getScreenWidth;


-(CGFloat) getStatusBarHeight;
//上面两个方法的相加
-(CGFloat) getTopViewHeight;

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
