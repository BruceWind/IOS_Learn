//
//  SLWeiboController.h
//  ios_helloworld
//
//  Created by wei on 2017/5/24.
//  Copyright © 2017年 wei. All rights reserved.
//

#ifndef SLWeiboController_h
#define SLWeiboController_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface SLWeiboController : UITableViewController


//定义数组，保存模型数据
@property (nonatomic,readwrite, strong)NSArray *statusFrames;


@end

#endif /* SLWeiboController_h */
