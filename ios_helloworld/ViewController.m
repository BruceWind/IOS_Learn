//
//  ViewController.m
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/27.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(strong,nonatomic) UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**begin
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 20)];
    [self.button setTitle:@"跳转" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    
    [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    //end**/

    self.button = [[UIButton alloc] initWithFrame:(CGRectMake(0, [[UIScreen mainScreen]bounds].size.height/2, [[UIScreen mainScreen] bounds].size.width, 20))];
    [self.button setTitle:@"toast" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    
}


-(void)clickMe:(id)sender{
    [self toast:@"提示1" :@"test"];
    
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

@end
