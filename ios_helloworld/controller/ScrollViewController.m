//
//  Scroller.m
//  ios_helloworld
//
//  Created by wei on 2017/5/14.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScrollViewController.h"


@interface ScrollViewController()

    @property UIScrollView *myScrollView;
    @property     UIImageView *imageView;

@end

@implementation ScrollViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //    [_imageView setContentMode:UIViewContentModeScaleToFill];//拉伸宽度或者高度实现充满

    [self addScrollView];

}




-(void)addScrollView{
    _myScrollView = [[UIScrollView alloc]initWithFrame:
                    CGRectMake(20, 20, 280, 420)];
    _myScrollView.accessibilityActivationPoint = CGPointMake(100, 100);
    
    
    _imageView = [[UIImageView alloc]
                  initWithFrame:CGRectMake(0,0, [super getScreenWidth], [super getScreenHeight])
                  ];
    [_imageView setImage:[self getImg:@"compress_erhai.jpg"]];
    [self.view addSubview:_imageView];
    [_imageView setContentMode:UIViewContentModeScaleAspectFill];//剪切中间部分实现充满
    
    [_myScrollView addSubview:_imageView];
    _myScrollView.minimumZoomScale = 0.5;
    _myScrollView.maximumZoomScale = 3;
    _myScrollView.contentSize = CGSizeMake(_imageView.frame.size.width,
                                          _imageView.frame.size.height);
    _myScrollView.delegate = self;
    [self.view addSubview:_myScrollView];
}



-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return _imageView;
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    [super logPrint:@"Did end decelerating"];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    //    NSLog(@"Did scroll");
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
                 willDecelerate:(BOOL)decelerate{
    [super logPrint:@"Did end dragging"];
}
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    [super logPrint:@"Did begin decelerating"];
}
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [super logPrint:@"Did begin dragging"];
}



@end
