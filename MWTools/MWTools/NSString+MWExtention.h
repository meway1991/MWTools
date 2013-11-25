//
//  NSString+MWExtention.h
//  MWTools
//
//  Created by meway on 13-11-22.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+MWExtention.h"

@interface NSString (MWExtention)

/**
 * Calculate the md5 hash of this string using CC_MD5.
 *
 * @return md5 hash of this string
 */
@property (nonatomic, readonly) NSString* md5Hash;

/**
 * Calculate the SHA1 hash of this string using CommonCrypto CC_SHA1.
 *
 * @return NSString with SHA1 hash of this string
 */
@property (nonatomic, readonly) NSString* sha1Hash;


/**
 *  检测字符串中是否有空白符和换行符
 *
 *  @return BOOL
 */
- (BOOL)isWhitespaceAndNewlines;

/**
 *  URL Encode
 *
 *  @return NSString
 */
- (NSString *)urlEncoded;

/**
 *  移除string中所有的HTML标签
 *
 *  @return NSString
 */
- (NSString *)stringByRemovingHTMLTags;

/**
 *  验证字符串是否为空
 *
 *  @return BOOL
 */
- (BOOL)isNotNil;

@end
