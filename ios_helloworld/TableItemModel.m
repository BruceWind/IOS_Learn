//
//  TableItemModel.m
//  ios_helloworld
//
//  Created by wei on 2017/3/29.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableItemModel.h"

@interface TableItemModel()

@end

@implementation TableItemModel


-(TableItemModel *) initWith:(NSString *)title :(Class)cls
{
    TableItemModel * model=[super init];
    model.title=title;
    model.cls = cls;
    return model;
}
@end
