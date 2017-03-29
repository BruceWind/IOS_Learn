//
//  general_table_view.h
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/29.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface general_table_view : UITableView

// tableView的坐标
@property (nonatomic, assign) CGRect        tableViewFrame;

// 存放Cell上各行textLabel值
@property (nonatomic, copy)NSMutableArray * textLabel_MArray;

// 存放Cell上各行imageView上图片
@property (nonatomic, copy)NSMutableArray * images_MArray;

// 存放Cell上各行detailLabel值
@property (nonatomic, copy)NSMutableArray * subtitle_MArray;

@end
