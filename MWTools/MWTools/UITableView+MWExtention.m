//
//  UITableView+MWExtention.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "UITableView+MWExtention.h"
#import <objc/runtime.h>

@implementation UITableView (MWExtention)

- (UITableViewCell *)loadCellFromClass:(Class)cellClass
{
    const char* className = class_getName(cellClass);
    
    NSString *identifier = [[NSString alloc] initWithBytesNoCopy:(char*)className
                                                          length:strlen(className)
                                                        encoding:NSASCIIStringEncoding freeWhenDone:NO];
    
    UITableViewCell* cell = [self dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil)
    {
        cell = [[cellClass alloc] initWithStyle:UITableViewCellStyleDefault
                                 reuseIdentifier:identifier];
    }
    
    SAFE_RELEASE(identifier);
    
    return cell;
}

- (CGFloat)heightForRow:(NSIndexPath *)indexPath
{
    return [self.dataSource tableView:self cellForRowAtIndexPath:indexPath].frame.size.height;
}

@end
