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

@property UIImageView *imageView;//scrollview content
@property UIScrollView *scrollView;

@end

@implementation ScrollViewController


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    
    //    [_imageView setContentMode:UIViewContentModeScaleToFill];//拉伸宽度或者高度实现充满

    [self addScrollView];

}




-(void)addScrollView{
    _scrollView = [[UIScrollView alloc]initWithFrame:
                    CGRectMake(20, 20, 280, 420)];
    _scrollView.accessibilityActivationPoint = CGPointMake(100, 100);
    
    
    _imageView = [[UIImageView alloc]
                  initWithFrame:CGRectMake(0,0, [super getScreenWidth], [super getScreenHeight])
                  ];
    [_imageView setImage:[self getImg:@"compress_erhai.jpg"]];
    [self.view addSubview:_imageView];
    [_imageView setContentMode:UIViewContentModeScaleAspectFill];//剪切中间部分实现充满
    
    [_scrollView addSubview:_imageView];
    _scrollView.minimumZoomScale = 0.5;//最小倍数 默认 1.0
    _scrollView.maximumZoomScale = 2;//最大倍数 默认 1.0
    _scrollView.contentSize = CGSizeMake(_imageView.frame.size.width,
                                          _imageView.frame.size.height);
    _scrollView.delegate = self;//绑定滚动的一些监听事件

    //隐藏滚动条
    _scrollView.showsVerticalScrollIndicator = false;
    _scrollView.showsHorizontalScrollIndicator = false;
    
    [self.view addSubview:_scrollView];
}



-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return _imageView;
}

//滚动结束
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if(_scrollView.decelerating)
    {
        [super logPrint:@"Did scroll, decelerating."];
    }
    else if(_scrollView.isDragging){
            [super logPrint:@"Did scroll, draging."];
    }
}

//开始拖拽
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [super logWaring:@"Did begin dragging"];
}

//停止拖拽
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView
                 willDecelerate:(BOOL)decelerate{
    [super logWaring:@"Did end dragging"];
}

//开始减速
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    [super logWaring:@"Did begin decelerating"];
}

//减速结束
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    [super logWaring:@"Did end decelerating"];
}


-(NSString *)getTitle
{
    return @"滚动条";
}

@end
