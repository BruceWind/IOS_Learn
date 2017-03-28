//
//  MainViewController.m
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/27.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import "MainViewController.h"
#import "ButtonViewController.h"

@interface MainViewController()
//@property(strong,nonatomic) UITableView *tableView;

@property(strong,nonatomic) UIButton *button;

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 第一种方法 通过storyBord的名字 取得SB 再通过通过SB调用instantiateInitialViewController
//    UIStoryboard *stroyB = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    MainViewController *naVC = [stroyB instantiateInitialViewController];
    
    //  由storyboard根据myView的storyBoardID来获取我们要切换的视图
//    MainViewController *VC = [stroyB instantiateViewControllerWithIdentifier:@"myView"];
    
    [self printLn];
    
    self.button = [[UIButton alloc] initWithFrame:(CGRectMake(0, [[UIScreen mainScreen]bounds].size.height/2, [[UIScreen mainScreen] bounds].size.width, 20))];
    [self.button setTitle:@"skip" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];

//    [self toast:@"123":@"4353"];
    
    [self logPrint:@"viewDidLoad"];
    
}

-(void)clickMe:(id)sender{
    ButtonViewController *vc = [[ButtonViewController alloc] init];
    self.view.window.rootViewController = vc;
    
}

@end
