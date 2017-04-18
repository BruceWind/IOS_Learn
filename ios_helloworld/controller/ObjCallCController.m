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


@end

@implementation ObjCallCController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.label setText:[NSString stringWithUTF8String:c_get_str()]];
    
}

@end
