//
//  UITableView+MWExtention.h
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (MWExtention)

/**
 *  初始化cell的便利方法
 *
 *  @param cellClass cell的Class
 *
 *  @return cell
 */
- (UITableViewCell *)loadCellFromClass:(Class)cellClass;

/**
 *  返回cell的高度（需要已设置cell.frame）
 *
 *  @param indexPath indexPath
 *
 *  @return cell的高度
 */
- (CGFloat)heightForRow:(NSIndexPath *)indexPath;

@end
