//
//  UITableViewCell+MWExtention.h
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (MWExtention)

/**
 *  从XIB中载入cell
 *
 *  @param xibName XIB名称
 *
 *  @return cell
 */
+ (UITableViewCell *)loadCellFromXib:(NSString *)xibName;

@end
