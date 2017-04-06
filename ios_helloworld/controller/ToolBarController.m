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
                                    initWithTitle:[self getStr:@"BACK"] style:UIBarButtonItemStyleBordered
                                    target:self action:@selector(click:)];
    [customItem1 setImage:[self getImg:@"back.png"]];
    customItem1.title = [self getStr:@"BACK"];//now working
    
    UIBarButtonItem *customItem2 = [[UIBarButtonItem alloc]
                                    initWithTitle:[self getStr:@"DONE"] style:UIBarButtonItemStyleDone
                                    target:nil action:@selector(click:)];
    NSArray *toolbarItems = [NSArray arrayWithObjects:
                             customItem1,spaceItem, customItem2, nil];
    UIToolbar *toolbar = [
                          [UIToolbar alloc]initWithFrame:
                          CGRectMake(0, [self getTopViewHeight], [[UIScreen mainScreen]bounds].size.width, 50)
                          ];
    [toolbar setBarStyle:UIBarStyleDefault];
    //    [toolbar setBackgroundColor:[UIColor whiteColor]];//这句并没有卵用
//    toolbar.barTintColor = [UIColor grayColor];//这句有效
    [self.view addSubview:toolbar];
    [toolbar setItems:toolbarItems];
}

-(IBAction)click:(id)sender
{
    [self finish];
}

@end
