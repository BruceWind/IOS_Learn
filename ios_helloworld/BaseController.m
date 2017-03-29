//
//  BaseController.m
//  ios_helloworld
//
//  Created by wei on 2017/3/28.
//  Copyright © 2017年 wei. All rights reserved.
//
#import "BaseController.h"

@interface BaseController ()

@property(strong,nonatomic) UIButton *button;

@end

@implementation BaseController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self logPrint:@"viewDidLoad"];
}

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

-(void)jump:(UIViewController *)vc
{
    [self.navigationController pushViewController:vc animated:YES];
}

-(void)finish
{
    [self.navigationController popViewControllerAnimated:YES];
}


-(void)backToHome
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


-(NSString *) getTag
{
    return NSStringFromClass([self class]);
}


-(NSString *)getTitle
{
    return @"";
}

- (instancetype) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self.title = [self getTitle];
    return self;
}


@end
