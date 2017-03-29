//
//  TableItemModel.m
//  ios_helloworld
//
//  Created by 魏宗伟 on 2017/3/29.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableItemModel.h"

@interface TableItemModel()

@end

@implementation TableItemModel


-(TableItemModel *) initWith:(NSString *)t
{
    TableItemModel * model=[super init];
    model.title=t;
    return model;
}
@end
