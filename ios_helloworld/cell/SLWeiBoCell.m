//
//  SLWeiBoCell.m
//  ios_helloworld
//
//  Created by wei on 2017/5/24.
//  Copyright © 2017年 wei. All rights reserved.
//
#import "SLWeiBoCell.h"
#import "SLWeiBoFrame.h"
#import <SDWebImage/UIImageView+WebCache.h>

#define SLFontNiCheng [UIFont systemFontOfSize:15]
#define SLFontZhengWen [UIFont systemFontOfSize:16]
@interface SLWeiBoCell()
//头部头像
@property (nonatomic,weak) UIImageView *iconheader;
//昵称
@property (nonatomic,weak) UILabel *nicheng;
//是否是vip
@property (nonatomic,weak) UIImageView *vip;
//正文显示
@property (nonatomic,weak) UILabel *zhengwen;
//配图显示
@property (nonatomic,weak) UIImageView *peitu;

@end

@implementation SLWeiBoCell

//复写此方法，以达到重写UITableViewCell的目的
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // 让自定义cell和系统的cell一样，创建出来就拥有一些子控件提供给我们使用
        //1.创建头像
        UIImageView *iconheader=[[UIImageView alloc] init];
        [self.contentView addSubview:iconheader];
        self.iconheader=iconheader;
        //2.创建昵称
        UILabel *nicheng=[[UILabel alloc] init];
        nicheng.font=SLFontNiCheng;
        [self.contentView addSubview:nicheng];
        self.nicheng=nicheng;
        //3.创建vip
        UIImageView *vip=[[UIImageView alloc] init];
        vip.image=[UIImage imageNamed:@"vip"];
        [self.contentView addSubview:vip];
        self.vip=vip;
        //4创建正文
        UILabel *zhengwen=[[UILabel alloc] init];
        //让正文进行多行显示
        zhengwen.numberOfLines=0;
        //设置正文的字体，此时的字体应该在和计算该正文的字体长宽所用字体一致，
        zhengwen.font=SLFontZhengWen;
        [self.contentView addSubview:zhengwen];
        
        self.zhengwen=zhengwen;
        //5创建配图
        UIImageView *peitu=[[UIImageView alloc] init];
        [self.contentView addSubview:peitu];
        self.peitu=peitu;
    }
    return self;
}
-(void)setItemframe:(SLWeiBoFrame *)itemframe
{
    _itemframe=itemframe;
    //设置数据
    [self settingData];
    //设置frame
    [self settingFrame];
}

-(void)settingData
{
    //设置头像
    SLWeiBo *weibof=self.itemframe.weibo;
    self.iconheader.image=[UIImage imageNamed:weibof.icon];
    //设置昵称
    self.nicheng.text=weibof.name;
    //设置vip
    if (weibof.vip) {
        self.nicheng.textColor=[UIColor redColor];
        self.vip.hidden=NO;
    }else{
        self.nicheng.textColor=[UIColor blackColor];
        self.vip.hidden=YES;
    }
    //设置内容
    self.zhengwen.text=weibof.text;
    //设置配图
    if (weibof.picture) {
        [
         self.peitu
         sd_setImageWithURL:[NSURL URLWithString:[weibof picture]]
         placeholderImage:[UIImage imageNamed:@"back.png"]
         ];
        self.peitu.hidden=NO;
    }else{
        self.peitu.hidden=YES;
    }
    
    
    [
     self.iconheader
     sd_setImageWithURL:[NSURL URLWithString:[weibof icon]]
     placeholderImage:[UIImage imageNamed:@"back.png"]
     ];
    
}

-(void)settingFrame
{
    //1设置头像的frame
    self.iconheader.frame=self.itemframe.iconF;
    //2设置昵称的frame
    self.nicheng.frame=self.itemframe.nichengF;
    //3设置vip的frame
    self.vip.frame=self.itemframe.vipF;
    //4设置正文的frame
    self.zhengwen.frame=self.itemframe.zhengwenF;
    //5设置配图的frame
    if (self.itemframe.weibo.picture) {
        self.peitu.frame=self.itemframe.peituF;
    }
}
@end
