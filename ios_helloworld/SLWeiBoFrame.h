//
//  SLWeiBoFrame.h
//  ios_helloworld
//
//  Created by wei on 2017/5/24.
//  Copyright © 2017年 wei. All rights reserved.
//
#import "SLWeiBo.h"
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@interface SLWeiBoFrame : NSObject

/**
 头像的frame
 */
@property (nonatomic,assign) CGRect iconF;
/**
 昵称的frame
 */
@property (nonatomic,assign) CGRect nichengF;
/**
 vip的frame
 */
@property (nonatomic,assign) CGRect vipF;
/**
 正文的frame
 */
@property (nonatomic,assign) CGRect zhengwenF;
/**
 配图的frame
 */
@property (nonatomic,assign) CGRect peituF;
/**
 行高
 */
@property (nonatomic,assign) CGFloat cellHeight;
@property (nonatomic,strong) SLWeiBo *weibo;

@end
