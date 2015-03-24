//
//  UIButton+CoeWebImage.h
//  4s
//
//  Created by muxi on 15/3/16.
//  Copyright (c) 2015年 muxi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CoreWebImage)

/**
 *  按钮展示网络图片
 *
 *  @param urlStr 图片url地址
 */
-(void)imageWithUrlStr:(NSString *)urlStr;

@end
