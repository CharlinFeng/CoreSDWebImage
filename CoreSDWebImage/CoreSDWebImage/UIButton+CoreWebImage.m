//
//  UIButton+CoeWebImage.m
//  4s
//
//  Created by muxi on 15/3/16.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "UIButton+CoreWebImage.h"
#import "UIButton+WebCache.h"

@implementation UIButton (CoreWebImage)


/**
 *  按钮展示网络图片
 *
 *  @param url 图片url地址
 */
-(void)imageWithUrlStr:(NSString *)urlStr{
    
    NSURL *url=[NSURL URLWithString:urlStr];
    
    [self sd_setImageWithURL:url forState:UIControlStateNormal];
}


@end
