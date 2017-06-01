//
//  HttpUtils.m
//  ios_helloworld
//
//  Created by wei on 2017/5/26.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpCallback.h"

@interface HttpUtils:NSObject

+(void)doPost:(NSString *)url : (NSDictionary *)param :(JSON_CALLBACK)callback;


+(void)doGet:(NSString *)url : (NSDictionary *)param :(JSON_CALLBACK)callback;


@end
