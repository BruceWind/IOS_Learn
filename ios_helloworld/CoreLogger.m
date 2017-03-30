//
//  CoreLogger.m
//  ios_helloworld
//
//  Created by wei on 2017/3/30.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreLogger.h"

@interface CoreLogger()

@property(strong,nonatomic)  NSString * tagName;

@end

@implementation CoreLogger

-(CoreLogger *)initWithObj:(NSObject *)obj
{
    _tagName = NSStringFromClass(obj.class);
    return self;
}

-(void)d:(NSString *)str
{
    NSLog(@"🌑 %@ : %@", _tagName ,str);
}

//blue log
-(void)warning:(NSString *)str
{
    NSLog(@"🔵 %@ : %@", _tagName ,str);
}

//red log
-(void)error:(NSString *)str
{
    NSLog(@"⭕ %@ : %@", _tagName ,str);
}

//crash log
-(void)exception:(NSString *)str
{
    NSLog(@"🚫 %@ : %@", _tagName ,str);
}






@end
