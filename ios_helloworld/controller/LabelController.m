//
//  LabelController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/4.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LabelController.h"

@interface LabelController()


@end

@implementation LabelController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self addLabel];
}


-(void)addLabel
{
    
    [super logPrint:@"addLablel."];
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:@"用于线程测试Label."];
    _label.textAlignment = NSTextAlignmentCenter;
}


-(NSString *)getTitle
{
    return @"标签控件";
}

@end
