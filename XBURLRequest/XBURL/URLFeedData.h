//
//  URLFeedData.h
//  RKWXT
//
//  Created by DYM on 15/3/11.
//  Copyright (c) 2015年 roderick. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    WXT_URLFeedData_Succeed = 0,//返回成功
    WXT_URLFeedData_UndefinedError = -1,//无定义错误
    WXT_URLFeedData_ParseError = -2,//数据解析失败
    WXT_URLFeedData_EmptyDataReturned = -3,//返回空数据
    WXT_URLFeedData_DBFindError = 1,//数据库查询失败
    WXT_URLFeedData_ParamError = 2,//参数错误
}WXT_URLFeedDataError;

@interface URLFeedData : NSObject
@property (nonatomic,strong) id data;
@property (nonatomic,assign) NSInteger code;
@property (nonatomic,strong) NSString *errorDesc;

@end
