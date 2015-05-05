//
//  UIView+SDWebImage.m
//  CoreSDWebImage
//
//  Created by 冯成林 on 15/5/5.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import "UIView+SDWebImage.h"
#import "UIImageView+WebCache.h"
#import "UIButton+WebCache.h"

@implementation UIView (SDWebImage)




/**
 *  imageView展示网络图片
 *
 *  @param urlStr  图片地址
 *  @param phImage 占位图片
 */
-(void)imageWithUrlStr:(NSString *)urlStr phImage:(UIImage *)phImage{
    
    NSURL *url=[NSURL URLWithString:urlStr];
    
    if([self isKindOfClass:[UIImage class]]){// 图片
        
        __weak UIImageView *imageView = (UIImageView *)self;
        
        [imageView sd_setImageWithURL:url placeholderImage:phImage];
    }else if ([self isKindOfClass:[UIButton class]]){//按钮
        
        __weak UIButton *btn = (UIButton *)self;
        
        [btn sd_setImageWithURL:url forState:UIControlStateNormal placeholderImage:phImage];
    }
}



/**
 *  带有进度的网络图片展示
 *
 *  @param urlStr         图片地址
 *  @param phImage        占位图片
 *  @param progressBlock  进度
 *  @param completedBlock 完成
 */
-(void)imageWithUrlStr:(NSString *)urlStr phImage:(UIImage *)phImage progressBlock:(SDWebImageDownloaderProgressBlock)progressBlock completedBlock:(SDWebImageCompletionBlock)completedBlock{
    
    NSURL *url=[NSURL URLWithString:urlStr];
    
    SDWebImageOptions options = SDWebImageLowPriority | SDWebImageRetryFailed;
    
    if([self isKindOfClass:[UIImage class]]){// 图片
        
        __weak UIImageView *imageView = (UIImageView *)self;
        
        [imageView sd_setImageWithURL:url placeholderImage:phImage options:options progress:progressBlock completed:completedBlock];
        
    }else if ([self isKindOfClass:[UIButton class]]){//按钮
        
        __weak UIButton *btn = (UIButton *)self;
        
        [btn sd_setImageWithURL:url forState:UIControlStateNormal placeholderImage:phImage options:options completed:completedBlock];
    }
}


@end
