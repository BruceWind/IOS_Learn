//
//  ObjCallCPlusController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/18.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjCallCPlusController.h"
#import "CPlusTest.h"

@interface ObjCallCPlusController()

extern  void Test();

@end

@implementation ObjCallCPlusController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.label setText:[NSString stringWithUTF8String:cplus_get_str()]];
}

-(NSString *)getTitle
{
    return @"OC调用C++";
}
@end
