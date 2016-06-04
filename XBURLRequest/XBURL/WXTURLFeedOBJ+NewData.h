//
//  WXTURLFeedOBJ+NewData.h
//  RKWXT
//
//  Created by DYM on 15/6/15.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import "WXTURLFeedOBJ.h"
#import <CoreGraphics/CoreGraphics.h>

@interface WXTURLFeedOBJ (NewData)
- (void)fetchNewDataFromFeedType:(WXT_UrlFeed_Type)type httpMethod:(WXT_HttpMethod)httpMethod timeoutIntervcal:(CGFloat)timeoutInterval feed:(NSDictionary*)feed completion:(void(^)(URLFeedData *retData))completion;

@end
