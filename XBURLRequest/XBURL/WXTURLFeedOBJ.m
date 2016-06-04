//
//  WXTURLFeedOBJ.m
//  RKWXT
//
//  Created by DYM on 15/3/11.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import "WXTURLFeedOBJ.h"

@implementation WXTURLFeedOBJ

+ (WXTURLFeedOBJ*)sharedURLFeedOBJ{
    static dispatch_once_t onceToken;
    static WXTURLFeedOBJ *sharedInstance = nil;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[WXTURLFeedOBJ alloc] init];
    });
    return sharedInstance;
}

- (NSString*)rootURL:(WXT_UrlFeed_Type)type{
    NSString *url = nil;
    NSString *newRootUrl = WXTBaseUrl;   
    switch (type) {
        case WXT_UrlFeed_Type_LoadBalance:
            url = @"/stores.php";
            break;
        default:
            break;
    }
    NSString *compURL = nil;
    if(![url isEqualToString:@""]){
        return [NSString stringWithFormat:@"%@%@",newRootUrl,url];
    }
    return compURL;
}

- (NSString*)urlRequestParamFrom:(NSDictionary*)dic{
    NSArray *keys = [dic allKeys];
    if ([keys count] == 0){
        return nil;
    }
    
    NSMutableString *mutString = [NSMutableString string];
    for (NSString *key in keys){
        id value = [dic objectForKey:key];
        if (!value){
            NSLog(@"无效的参数 key = %@",key);
            continue;
        }
        if ([keys indexOfObject:key] != 0){
            [mutString appendString:@"&"];
        }
        [mutString appendFormat:@"%@=%@",key,value];
    }
    return mutString;
}

@end
