//
//  MWTools.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "MWTools.h"

static UILabel *_msgLabel = nil;

@implementation MWTools

#pragma mark - AlertView
+ (void)MsgBox:(NSString *)msg
{
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                    message:msg
                                                   delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
	[alert show];
}

#pragma mark - 获取UIWindow AppDelegate
+ (AppDelegate *)getAppDelegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

+ (UIWindow *)getAppWindow
{
    return [[MWTools getAppDelegate] window];
}

#pragma mark - FlashMessage
+ (void)flashMessage:(NSString *)message inView:(UIView *)view
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _msgLabel = [[UILabel alloc] init];
        _msgLabel.font = [UIFont systemFontOfSize:18.f];
        _msgLabel.textColor = [UIColor whiteColor];
        _msgLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _msgLabel.backgroundColor = [UIColor blackColor];
        _msgLabel.textAlignment = NSTextAlignmentCenter;
    });
    
    //Show message
    __block CGRect rect = CGRectMake(0, -32, 320, 32);
    _msgLabel.frame = rect;
    _msgLabel.text = message;
    [view addSubview:_msgLabel];
    
    rect.origin.y += 32;
    
    [UIView animateWithDuration:.4f animations:^{
        _msgLabel.frame = rect;
    } completion:^(BOOL finished){
        rect.origin.y -= 32;
        [UIView animateWithDuration:.4f delay:1.2f options:UIViewAnimationOptionCurveLinear animations:^{
            _msgLabel.frame = rect;
        } completion:^(BOOL finished){
            [_msgLabel removeFromSuperview];
        }];
    }];
}

#pragma mark - 画直线
+ (void)drawLine:(float)lineWidth context:(CGContextRef)context moveToPoint:(CGPoint)moveCoor addLineToPoint:(CGPoint)addCoor rgb:(MWRGBColor)rgb
{
    CGContextSetRGBStrokeColor(context, rgb.red, rgb.green, rgb.blue, rgb.alpha);
    
    CGContextSetLineWidth(context, lineWidth);
    
    CGContextMoveToPoint(context, moveCoor.x, moveCoor.y);
    CGContextAddLineToPoint(context, addCoor.x, addCoor.y);
    CGContextStrokePath(context);
}

@end
