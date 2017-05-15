//
//  UIImageViewController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/24.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImageViewController.h"

@interface UIImageViewController()
@property UIImageView *imageView;
@end

@implementation UIImageViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    _imageView = [[UIImageView alloc]
                  initWithFrame:CGRectMake(0,0, [super getScreenWidth], [super getScreenHeight])
                  ];
    [_imageView setImage:[super getImg:@"compress_erhai.jpg"]];
    [self.view addSubview:_imageView];
    [_imageView setContentMode:UIViewContentModeScaleAspectFill];//剪切中间部分实现充满
    
//    [_imageView setContentMode:UIViewContentModeScaleToFill];//拉伸宽度或者高度实现充满
    
    
    
}

@end
