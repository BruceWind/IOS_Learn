//
//  TabAController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/5.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TabAController.h"

@interface TabAController()

@property UILabel *label;

@end
@implementation TabAController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self addLabel];
}


-(void)addLabel
{
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:[self getTag]];
    _label.textAlignment = NSTextAlignmentCenter;
    
}
@end
