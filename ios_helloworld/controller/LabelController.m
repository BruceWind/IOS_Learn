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
    
    //测试线程
//    [self performSelectorInBackground:@selector(addLabel) withObject:nil];
//    [self performSelectorOnMainThread:@selector(printThreadId) withObject:nil waitUntilDone:TRUE];
    
    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(addLabel) object:nil];
    [thread start];
    
    
//    [self addLabel];
    
}


-(void)addLabel
{
    
    [super logPrint:@"addLablel."];
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:@"im a label."];
    _label.textAlignment = NSTextAlignmentCenter;
}

-(void)printThreadId
{
    if([[NSThread currentThread]isMainThread])
    {
        [super logPrint:@"isMainthread"];
    }
    else
    {
        [super logPrint:@"not IsMainthread"];
    }
}
@end
