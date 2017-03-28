//
//  BaseController.h
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/28.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface BaseController : UIViewController

- (void) toast:(NSString *) title :(NSString *) str;

-(NSString *)getStr:(NSString *)key;

-(void) logPrint:(NSString *)str;

-(NSString *) getTag;

-(void) printLn;

-(void)jump:(UIViewController *)vc;

-(void)finish;

//
-(void)backToHome;

@end
