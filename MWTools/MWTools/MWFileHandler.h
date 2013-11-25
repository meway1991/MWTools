//
//  MWFileHandler.h
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MWFileHandler : NSObject

/**
 *  本地缓存
 *
 *  @param file     NSArray或者NSData
 *  @param filename 文件名
 *
 *  @return BOOL
 */
- (BOOL)writeFileToLocalCache:(id)file name:(NSString *)filename;

@end
