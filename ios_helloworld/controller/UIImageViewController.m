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
                  initWithFrame:CGRectMake(0,0, 960, 480)
                  ];
    [_imageView setImage:[self getImg:@"compress_erhai.jpg"]];
    [self.view addSubview:_imageView];
}

@end
