//
//  ObjCallCController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/18.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjCallCController.h"
#import "test.h"
@interface ObjCallCController()

@property UILabel *label;

@end

@implementation ObjCallCController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addLabel];
}


-(void)addLabel
{
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:[NSString stringWithUTF8String:c_get_str()]];
    _label.textAlignment = NSTextAlignmentCenter;
    
}
@end
