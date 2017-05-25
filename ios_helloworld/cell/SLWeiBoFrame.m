//
//  SLWeiBoFrame.m
//  ios_helloworld
//
//  Created by wei on 2017/5/24.
//  Copyright © 2017年 wei. All rights reserved.
//

#import "SLWeiBoFrame.h"
#import "SLWeiBo.h"
#define SLFontNiCheng [UIFont systemFontOfSize:15]
#define SLFontZhengWen [UIFont systemFontOfSize:16]
@implementation SLWeiBoFrame


-(void)setWeibo:(SLWeiBo *)weibo
{
    int scrn_width = [[UIScreen mainScreen] bounds].size.width;
    
    _weibo=weibo;
    //间隙
    CGFloat padding=10;
    //1设置头像的frame
    CGFloat iconViewX=padding;
    CGFloat iconViewY=padding;
    CGFloat iconViewW=30;
    CGFloat iconViewH=30;
    self.iconF=CGRectMake(iconViewX, iconViewY, iconViewW, iconViewH);
    
    //2昵称的frame x：上一个view向右移动 padding距离 y:计算起来比较复杂 要先计算昵称控件的高度
    CGFloat nichengX=CGRectGetMaxX(self.iconF)+padding;//
    //如果将来的文字范围小于指定的范围，就返回实际的范围
    CGSize namesize=[
                     self
                     sizeWithString:_weibo.name
                     font:SLFontNiCheng
                     maxsize:CGSizeMake(MAXFLOAT, MAXFLOAT)
                     ];
    CGFloat nichengH = namesize.height;
    CGFloat nichengW = namesize.width;
    CGFloat nichengY=self.iconF.size.height * 0.5 - nichengH * 0.5 + iconViewY;//取中间位置 居中显示
    self.nichengF=CGRectMake(nichengX , nichengY, nichengW,nichengH);
    
    
    //3设置vip的frame
    CGFloat vipViewX = CGRectGetMaxX(self.nichengF)+padding;//左边 距离padding
    CGFloat vipViewY = nichengY;//上边对齐
    CGFloat vipViewW = 14;//宽高
    CGFloat vipViewH = 14;
    self.vipF=CGRectMake(vipViewX, vipViewY, vipViewW, vipViewH);
    
    
    //4设置正文的frame
    
    CGFloat zhengwenX=iconViewX;//左边对其
    CGFloat zhengwenY=CGRectGetMaxY(self.iconF)+padding;//距离上边padding长度
    
    CGSize maxsize1=CGSizeMake( scrn_width - padding*2, 16*4);
    CGSize zhengwensize=[self sizeWithString:_weibo.text font:SLFontZhengWen maxsize:maxsize1];
    CGFloat zhengwenW=zhengwensize.width;
    CGFloat zhengwenH=zhengwensize.height;
    
    self.zhengwenF=CGRectMake(zhengwenX, zhengwenY, zhengwenW, zhengwenH);
    //5设置配图的frame
    //   CGFloat cellHeight=0;
    if (_weibo.picture) {
        CGFloat peituX = iconViewX;
        CGFloat peituY = CGRectGetMaxY(self.zhengwenF)+padding;
        CGFloat peituW=100;
        CGFloat peituH=100;
        self.peituF = CGRectMake(peituX, peituY, peituW, peituH);
        self.cellHeight = CGRectGetMaxY(self.peituF)+padding;
    }
    else
    {
        //无配图的情况下的行高
        self.cellHeight = CGRectGetMaxY(self.zhengwenF)+padding;
    }
}

/**
 *  计算文本的宽高
 *
 *  @param str     文本显示
 *  @param font    文本显示的字体
 *  @return  如果将来计算的文字的范围超出了指定的范围，就返回的就是指定的范围
 */
-(CGSize)sizeWithString:(NSString *)str font:(UIFont *)font maxsize:(CGSize)maxs
{
    NSDictionary *dict=@{NSFontAttributeName: font};
    CGSize  nasize=[str
                    boundingRectWithSize:maxs
                    options:NSStringDrawingUsesLineFragmentOrigin
                    attributes:dict
                    context:nil
                    ].size;
    return nasize;
}

@end
