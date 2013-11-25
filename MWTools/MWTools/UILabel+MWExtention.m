//
//  UILabel+MWExtention.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "UILabel+MWExtention.h"

@implementation UILabel (MWExtention)

+ (UILabel *)initWithFrame:(CGRect)frame Font:(UIFont *)font TextColor:(UIColor *)color Alignment:(NSTextAlignment)alignment Lines:(NSInteger)lines
{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.font = font?font:MWFont(16);
    label.textColor = color?color:[UIColor blackColor];
    label.textAlignment = alignment;
    label.numberOfLines = lines;
    return label;
}

- (CGFloat)constrainedToSize:(CGSize)size
{
    self.numberOfLines = 0;
    
    CGSize size2 = [self.text sizeWithFont:self.font constrainedToSize:size lineBreakMode:self.lineBreakMode];
    CGRect rect = self.frame;
    rect.size.height = size2.height;
    self.frame = rect;
    
    return size2.height;
}

@end
