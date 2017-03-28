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
    
//    UINavigationBar *navbar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 420, 50)];
//    //do something like background color, title, etc you self
//    
//    navbar.topItem.title = @"首页";
//    navbar.topItem.titleView.tintColor = [UIColor redColor];
//    navbar.barStyle = UIBarStyleBlackTranslucent;
//    [self.view addSubview:navbar];
    
    self.button = [[UIButton alloc] initWithFrame:(CGRectMake(0, [[UIScreen mainScreen]bounds].size.height/2, [[UIScreen mainScreen] bounds].size.width, 20))];
    [self.button setTitle:[self getStr:@"SKIP"] forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)clickMe:(id)sender{
    ButtonViewController *vc = [[ButtonViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

-(NSString *)getTitle
{
    return  [self getStr:@"HOME"];
}

@end
