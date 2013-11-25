//
//  UILabel+MWExtention.h
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (MWExtention)

/**
 *  UILabel创建便利方式
 *
 *  @param frame     frame
 *  @param font      font
 *  @param color     color
 *  @param alignment NSTextAlignment
 *  @param lines     numberOfLines
 *
 *  @return UILabel
 */
+ (UILabel *)initWithFrame:(CGRect)frame
                      Font:(UIFont *)font
                 TextColor:(UIColor *)color
                 Alignment:(NSTextAlignment)alignment
                     Lines:(NSInteger)lines;

/**
 *  根据size调整UILabel的frame,并返回height
 *
 *  @param size 需要去适配的CGSize
 *
 *  @return UILabel的高度
 */
- (CGFloat)constrainedToSize:(CGSize)size;

@end
