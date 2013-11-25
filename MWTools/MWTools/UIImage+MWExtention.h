//
//  UIImage+MWExtention.h
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MWIMAGECOMPRESS_KB  1024

@interface UIImage (MWExtention)
/**
 *  压缩图片
 *
 *  @param compressionQuality 压缩率(0~1) 0-最高,质量低;1-基本不压缩
 *
 *  @return 压缩后的图片数据
 */
-(NSData *)dataWithCompressQuality:(CGFloat)compressionQuality;

/**
 *  压缩图片到指定length, 单位: Byte 
 *  eg: 压缩图片到 100 KB
 *  [imgObj dataWithCompressLength:100*MWIMAGECOMPRESS_KB]
 *
 *  @param length 指定大小
 *
 *  @return 压缩后的图片数据
 */
-(NSData *)dataWithCompressLength:(CGFloat)length;

/**
 *  等比压缩图片到指定的height
 *
 *  @param height 指定的height
 *
 *  @return 压缩后的图片
 */
- (UIImage *)imageScaledToHeight:(CGFloat)height;

/**
 *  等比压缩图片到指定的width
 *
 *  @param width 指定的width
 *
 *  @return 压缩后的图片
 */
- (UIImage *)imageScaledToWidth:(CGFloat)width;

/**
 *  居中裁剪图片
 *
 *  @param size size
 *
 *  @return 裁剪后的图片
 */
- (UIImage *)cutImageFromCenter:(CGSize)size;

@end
