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
    logger = [[CoreLogger alloc]initWithObj:self];
    
    [super viewDidLoad];
    
    [self logPrint:@"viewDidLoad"];
}

- (void) toast:(NSString *) str
{
    
    //初始化提示框；
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:[self getStr:@"TIPS"] message:str preferredStyle:  UIAlertControllerStyleAlert];
    
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

-(CGFloat) getStatusBarHeight
{
    CGSize statusBarSize = [[UIApplication sharedApplication] statusBarFrame].size;
    return MIN(statusBarSize.width, statusBarSize.height);
}
-(CGFloat) getTopViewHeight
{
    return [self getNavigationHeight] + [self getStatusBarHeight];
}

-(CGFloat)getNavigationHeight
{
    return self.navigationController.navigationBar.frame.size.height;
}

-(void) logPrint:(NSString *)str
{
    [logger d:str];
}


-(void) logError:(NSString *)str
{
    [logger error:str];
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

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    [logger  warning:@"viewDidDisappear"];
}


-(void)backToHome
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


-(NSString *) getTag
{
    return NSStringFromClass([self class]);
}

-(UIImage *)getImg:(NSString *)key
{
    return [UIImage imageNamed:key];
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
