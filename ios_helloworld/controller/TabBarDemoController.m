//
//  MainTabController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/5.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TabBarDemoController.h"

@interface TabBarDemoController()


@end
@implementation TabBarDemoController

-(void)viewDidLoad
{
    UITabBarItem *itemA = [[UITabBarItem alloc] initWithTitle:@"TabA" image:nil tag:2];
    UITabBarItem *itemB = [[UITabBarItem alloc] initWithTitle:@"TabB" image:nil tag:2];
    
    UIViewController *a=[TabAController alloc];
    a.tabBarItem=itemA;
    
    UIViewController *b=[TabBController alloc];
    b.tabBarItem=itemB;
    
    self.viewControllers = @[a,b];
    
    self.title = @"TabBarController例子";
    
    self.selectedIndex = 1;//选中第二个
}
@end
