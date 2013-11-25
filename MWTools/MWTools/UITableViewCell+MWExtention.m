//
//  UITableViewCell+MWExtention.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "UITableViewCell+MWExtention.h"

@implementation UITableViewCell (MWExtention)

+ (UITableViewCell *)loadCellFromXib:(NSString *)xibName
{
    NSArray* nib = [[NSBundle mainBundle] loadNibNamed:xibName owner:self options:nil];
    if(nib > 0)
        return [nib objectAtIndex:0];
    return nil;
}

@end
