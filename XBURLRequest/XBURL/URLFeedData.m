//
//  URLFeedData.m
//  RKWXT
//
//  Created by DYM on 15/3/11.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import "URLFeedData.h"

@implementation URLFeedData

- (NSString*)description{
    NSString *desc = @"网络请求成功";
    if (_code != 0){
        desc = [NSString stringWithFormat:@"code=%d describtion=%@",(int)_code,_errorDesc];
    }
    return desc;
}

@end
