//
//  BaseApplication.m
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/28.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseApplication.h"

@interface BaseApplication ()

@end

@implementation BaseApplication

- (void)showWindowBackground
{
    
    self.window = [UIWindow new];
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyWindow];
    [self.window makeKeyAndVisible];
    
    
    
}

@end
