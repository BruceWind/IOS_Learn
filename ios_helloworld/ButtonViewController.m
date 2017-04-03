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
    
    self.button = [[UIButton alloc] initWithFrame:
                   (CGRectMake([[UIScreen mainScreen] bounds].size.width/3,
                               [[UIScreen mainScreen] bounds].size.height/2,
                               [[UIScreen mainScreen] bounds].size.width/4,
                               30
                               )
                    )
                   ];
    
    
    [self.button setTitle:[self getStr:@"BACK"] forState:UIControlStateNormal];
    [self.button setTitle:[self getStr:@"PRESS"] forState:UIControlStateHighlighted];
    
    
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [_button setBackgroundImage:[UIImage imageNamed:@"yellow_button.png"]  forState:UIControlStateNormal];
    [_button setBackgroundImage:[UIImage imageNamed:@"gray_button.png"]  forState:UIControlStateHighlighted];
    
    [self.view addSubview:self.button];
    [_button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    
    
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
