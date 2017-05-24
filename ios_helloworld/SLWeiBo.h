//
//  SLWeiBo.h
//  ios_helloworld
//
//  Created by wei on 2017/5/24.
//  Copyright © 2017年 wei. All rights reserved.
//

#ifndef SLWeiBo_h
#define SLWeiBo_h

#import <Foundation/Foundation.h>

/**
 *  创建一个微博对象，保存模型数据
 */
@interface SLWeiBo : NSObject

@property (nonatomic,copy) NSString *text;//内容
@property (nonatomic,copy) NSString *icon;//头像
@property (nonatomic,copy) NSString *name;//昵称
@property (nonatomic,copy) NSString *picture;//配图
//是否是vip
@property (nonatomic,assign) BOOL vip;

@end

#endif /* SLWeiBo_h */
