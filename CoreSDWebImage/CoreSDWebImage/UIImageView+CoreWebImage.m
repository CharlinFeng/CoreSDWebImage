//
//  UIImageView+CoreWebImage.m
//  4s
//
//  Created by muxi on 15/3/16.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "UIImageView+CoreWebImage.h"
#import "UIImageView+WebCache.h"

@implementation UIImageView (CoreWebImage)

/**
 *  imageView展示网络图片
 *
 *  @param urlStr 图片url
 */
-(void)imageWithUrlStr:(NSString *)urlStr{
    
    NSURL *url=[NSURL URLWithString:urlStr];
    
    [self sd_setImageWithURL:url];
}


@end
