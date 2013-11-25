//
//  UIButton+MWExtention.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "UIButton+MWExtention.h"

@implementation UIButton (MWExtension)

+ (UIButton *)initWithTitle:(NSString *)title Frame:(CGRect)frame Font:(UIFont *)font bgImage:(MWImage)bgImage
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = frame;
    
    [btn setTitle:title?title:@"" forState:UIControlStateNormal];
    
    [btn setBackgroundImage:bgImage.normal_image?[UIImage imageNamed:bgImage.normal_image]:nil forState:UIControlStateNormal];
    
    [btn setBackgroundImage:bgImage.hilight_image?[UIImage imageNamed:bgImage.hilight_image]:nil forState:UIControlStateNormal];
    
    return btn;
}

+ (UIButton *)initWithImage:(MWImage)image Frame:(CGRect)frame
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.frame = frame;
        
    [btn setImage:image.normal_image?[UIImage imageNamed:image.normal_image]:nil forState:UIControlStateNormal];
    
    [btn setImage:image.hilight_image?[UIImage imageNamed:image.hilight_image]:nil forState:UIControlStateNormal];
        
    return btn;
}

@end
