//
//  UIButton+MWExtention.h
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWStruct.h"

@interface UIButton (MWExtension)

/**
 *  UIButton创建便利方式1(title+backgroundImage)
 *
 *  @param title   title
 *  @param frame   frame
 *  @param font    font
 *  @param bgImage backgroundImage
 *
 *  @return UIButton
 */
+ (UIButton *)initWithTitle:(NSString *)title
                      Frame:(CGRect)frame
                       Font:(UIFont *)font
                    bgImage:(MWImage)bgImage;

/**
 *  UIButton创建便利方式2(图片)
 *
 *  @param image image
 *  @param frame frame
 *
 *  @return UIButton
 */
+ (UIButton *)initWithImage:(MWImage)image
                      Frame:(CGRect)frame;

@end
