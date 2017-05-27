//
//  HttpCallback.h
//  ios_helloworld
//
//  Created by wei on 2017/5/27.
//  Copyright © 2017年 wei. All rights reserved.
//

#ifndef HttpCallback_h
#define HttpCallback_h

#import <Foundation/Foundation.h>

//api 异步调用回调Block
typedef void (^JSON_CALLBACK)( BOOL requestSuccess,NSDictionary*response);



#endif /* HttpCallback_h */
