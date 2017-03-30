//
//  CoreLogger.h
//  ios_helloworld
//
//  Created by wei on 2017/3/30.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreLogger : NSObject


-(CoreLogger *)initWithObj:(NSObject *)obj;

-(void)d:(NSString *)str;

//blue log
-(void)warning:(NSString *)str;



//red log
-(void)error:(NSString *)str;


//crash log
-(void)exception:(NSString *)str;
@end
