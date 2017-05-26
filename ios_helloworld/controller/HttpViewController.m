//
//  HttpViewController.m
//  ios_helloworld
//
//  Created by wei on 2017/5/26.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpViewController.h"
#import "HttpUtils.h"


@interface HttpViewController()


@end

@implementation HttpViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    [HttpUtils doPost:@"http://www.cnblogs.com/LiLihongqiang/p/5597418.html" :nil];
    
}

@end
