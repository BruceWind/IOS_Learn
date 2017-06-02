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


@property(null_resettable, nonatomic,strong) UILabel *label;

@end

@implementation HttpViewController

-(void)viewDidLoad{
    [super viewDidLoad];
    
    [HttpUtils doPost:@"http://www.quanmin.tv/json/page/new-ad/info.json" :nil : ^(BOOL requestSuccess,NSDictionary *response){
        
        [super logPrint:[NSString stringWithFormat:@" %@",response]];
        [self addLabel:[NSString stringWithFormat:@" %@",response]];
    }];
    
}


-(void)addLabel:(NSString *)str
{
    
    str = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    str = [str stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:str];
    _label.textAlignment = NSTextAlignmentCenter;
    
}



-(NSString *)getTitle
{
    return @"用AFN请求JSON";
}


@end
