//
//  ViewController.m
//  ios_helloworld
//
//  Created by wei on 2017/3/27.
//  Copyright © 2017年 wei. All rights reserved.
//

#import "ButtonViewController.h"

@interface ButtonViewController ()

@property(strong,nonatomic) UIButton *button;

@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.button = [[UIButton alloc] initWithFrame:(CGRectMake(0, [[UIScreen mainScreen]bounds].size.height/2, [[UIScreen mainScreen] bounds].size.width, 20))];
    [self.button setTitle:@"toast" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    [[self logger] error:@"错误日志"];
    [[self logger] d:@"错误日志"];
    [[self logger] warning:@"警告日志"];
    [[self logger] exception:@"异常日志"];
}


-(void)clickMe:(id)sender{
    
//    [self toast:@"提示1" :@"test"];

    [self backToHome];
    
}




-(NSString *)getTitle
{
    return @"UIButton";
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

@end
