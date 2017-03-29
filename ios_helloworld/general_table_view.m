//
//  general_table_view.m
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/29.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "general_table_view.h"

@interface general_table_view()<UITableViewDataSource,UITableViewDelegate>
// Initialization code
self.delegate   = self;
self.dataSource = self;

@end
