//
//  SLWeiBoCell.h
//  ios_helloworld
//
//  Created by wei on 2017/5/24.
//  Copyright © 2017年 wei. All rights reserved.
//

#ifndef SLWeiBoCell_h
#define SLWeiBoCell_h

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
@class SLWeiBoFrame;

@interface SLWeiBoCell : UITableViewCell
//导入SLweiboFrame对象，保存着一个单元格里面每个控件的位置，及weibo对象
@property (nonatomic,strong) SLWeiBoFrame *itemframe;

@end

#endif /* SLWeiBoCell_h */
