//
//  MainViewController.h
//  ios_helloworld
//
//  Created by wei on 2017/3/27.
//  Copyright © 2017年 wei. All rights reserved.
//  HOME_PAGE
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseController.h"
#import "TableItemModel.h"

@interface MainViewController : BaseController


-(NSMutableArray <TableItemModel *> *)generatorItemList;

@end
