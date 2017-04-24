//
//  TableItemModel.h
//  ios_helloworld
//
//  Created by wei on 2017/3/29.
//  Copyright © 2017年 wei. All rights reserved.

// =====用于存储Title 和 Controller类======
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface  TableItemModel : NSObject

@property NSString * title;
@property (nonatomic, assign) Class cls;

-(void)setTitle:(NSString *)title;
-(TableItemModel *) initWith:(NSString *)title:(Class)cls;

@end
