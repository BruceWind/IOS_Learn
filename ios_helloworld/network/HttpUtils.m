//
//  HttpUtils.m
//  ios_helloworld
//
//  Created by wei on 2017/5/26.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpUtils.h"
#import <AFNetworking.h>
#import "AFURLRequestSerialization.h"

@interface HttpUtils()

@end

@implementation HttpUtils


+(void)doPost:(NSString *)url : (NSDictionary *)param
{
    
    AFHTTPRequestSerializer *req= [[AFHTTPRequestSerializer serializer]
     requestWithMethod:@"POST"
     URLString:url
     parameters:param
     error:nil];
    
    
    AFURLSessionManager *manager =
    [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    [[manager dataTaskWithRequest:req completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        if (error) {
            NSLog(@"🔵 Error: %@", error);
        } else {
            NSLog(@"🔵 %@ %@", response, responseObject);
        }
    }]resume];
  
}
     
     
    
@end
