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

@property UILabel *label;

@end

@implementation LabelController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addLabel];
}


-(void)addLabel
{
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:@"im a label."];
    _label.textAlignment = NSTextAlignmentCenter;
    
}
@end
