//
//  ToolBarController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/4.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToolBarController.h"

@interface ToolBarController()

@end

@implementation ToolBarController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self addToolbar];
    
    
}


-(void)addToolbar
{
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc]
                                  initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                  target:nil action:nil];
    UIBarButtonItem *customItem1 = [[UIBarButtonItem alloc]
                                    initWithTitle:@"Tool1" style:UIBarButtonItemStyleBordered
                                    target:self action:@selector(toolBarItem1:)];
    UIBarButtonItem *customItem2 = [[UIBarButtonItem alloc]
                                    initWithTitle:@"Tool2" style:UIBarButtonItemStyleDone
                                    target:self action:@selector(toolBarItem2:)];
    NSArray *toolbarItems = [NSArray arrayWithObjects:
                             customItem1,spaceItem, customItem2, nil];
    UIToolbar *toolbar = [[UIToolbar alloc]initWithFrame:
                          CGRectMake(0, [self getTopViewHeight], [[UIScreen mainScreen]bounds].size.width, 50)];
    [toolbar setBarStyle:UIBarStyleBlackOpaque];
    [self.view addSubview:toolbar];
    [toolbar setItems:toolbarItems];
}

@end
