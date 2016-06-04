//
//  WXTURLFeedOBJ.h
//  RKWXT
//
//  Created by DYM on 15/3/11.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "URLFeedData.h"

typedef enum {
    WXT_UrlFeed_Type_LoadBalance = 0,
    WXT_UrlFeed_Type_Invalid,
}WXT_UrlFeed_Type;

#define WXTBaseUrl @"http://api.woxinyun.com/wx10api/V1"

@interface WXTURLFeedOBJ : NSObject
+ (WXTURLFeedOBJ*)sharedURLFeedOBJ;
- (NSString*)rootURL:(WXT_UrlFeed_Type)type;
- (NSString*)urlRequestParamFrom:(NSDictionary*)dic;
@end

typedef enum{
    WXT_HttpMethod_Get = 0, //GET
    WXT_HttpMethod_Post,  //POST
}WXT_HttpMethod;

#define K_URLFeedOBJ_Data_Code @"error"
#define K_URLFeedOBJ_Data_ErrorDesc @"msg"
#define K_URLFeedOBJ_Data_Content @"data"
