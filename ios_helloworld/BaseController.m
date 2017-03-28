//
//  BaseController.m
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/28.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//
#import "BaseController.h"

@interface BaseController ()

@property(strong,nonatomic) UIButton *button;

@end

@implementation BaseController

- (void) toast:(NSString *) title :(NSString *) str
{
    
    //初始化提示框；
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:str preferredStyle:  UIAlertControllerStyleAlert];
    
    [alert addAction:
     [UIAlertAction actionWithTitle:
      [self getStr:(@"YES")]
                              style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {}
      ]
     ];
    
    //弹出提示框；
    [self presentViewController:alert animated:true completion:nil];
}


-(NSString *)getStr:(NSString *)key
{
    return NSLocalizedStringFromTable(key,@"Localizable", nil);
}


-(void) logPrint:(NSString *)str
{
    NSLog(@"%@ : %@", self.getTag,str);
}

-(void) printLn
{
    NSLog(@"\n");
}


-(NSString *) getTag
{
    return NSStringFromClass([self class]);
}


@end
