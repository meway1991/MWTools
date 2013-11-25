//
//  MWFileHandler.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "MWFileHandler.h"

@implementation MWFileHandler

- (BOOL)writeFileToLocalCache:(id)file name:(NSString *)filename
{
    NSString *filePath = [[kDocumentFolder stringByAppendingPathComponent:@"MWCACHE"] stringByAppendingPathComponent:filename];
    
    return [file writeToFile:filePath atomically:YES];
}

@end
