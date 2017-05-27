//  HttpViewController.m
//  ios_helloworld
//
//  Created by wei on 2017/5/26.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HttpViewController.h"
#import "HttpUtils.h"
#import "HttpCallback.h"


@interface HttpViewController()


@end

@implementation HttpViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    [HttpUtils doPost:@"http://www.quanmin.tv/json/page/new-ad/info.json?_t=201705271351" :nil : ^(BOOL requestSuccess,NSData *response){
        
        [super logPrint:[NSString stringWithFormat:@" %@",response]];
    }];
    
}

@end
