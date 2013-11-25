//
//  UIImage+MWExtention.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "UIImage+MWExtention.h"

@implementation UIImage (MWExtention)

-(NSData *)dataWithCompressQuality:(CGFloat)compressionQuality
{
    NSData *imgData = UIImageJPEGRepresentation(self, compressionQuality);
    return imgData;
}

-(NSData *)dataWithCompressLength:(CGFloat)length
{
    CGFloat quality = 1;
    NSData * imgData = UIImageJPEGRepresentation(self, quality);
    while (imgData.length > length) {
        quality -= 0.1;
        imgData = UIImageJPEGRepresentation(self,quality);
        if (quality <0.2)
            break;
    };
    return imgData;
}

- (UIImage *)imageScaledToHeight:(CGFloat)height
{
    if (self.size.height < height)
        return self;
    CGSize newSize;
    newSize.height = height;
    newSize.width = self.size.width * height / self.size.height;
    
    UIGraphicsBeginImageContextWithOptions(newSize, YES, 0);
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}

- (UIImage *)imageScaledToWidth:(CGFloat)width
{
    if (self.size.width < width)
        return self;
    CGSize newSize;
    newSize.width = width;
    newSize.height = self.size.height * width / self.size.width;
    
    UIGraphicsBeginImageContextWithOptions(newSize, YES, 0);
    [self drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    UIImage *scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}

- (UIImage *)cutImageFromCenter:(CGSize)size
{
    CGRect rect;
    float x,y,w,h;
    if (self.size.height <= size.height)
        x = 0,h = self.size.height;
    else
        x = self.size.height/2 - size.height/2,h = size.height;
    
    if (self.size.width <= size.width)
        y = 0,w = self.size.width;
    else
        y = self.size.width/2 - size.width/2, w = size.width;
    
    rect = CGRectMake(x, y, w, h);
    return [UIImage imageWithCGImage:CGImageCreateWithImageInRect([self CGImage], rect)];
}

@end
