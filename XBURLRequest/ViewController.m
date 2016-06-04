//
//  ViewController.m
//  XBURLRequest
//
//  Created by 龙少 on 16/6/4.
//  Copyright © 2016年 龙少. All rights reserved.
//

#import "ViewController.h"
#import "URLFeedData.h"
#import "WXTURLFeedOBJ+NewData.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    dic[@"pid"] = @"ios";
    dic[@"sign"] = @"6ef2ecdcc716f4e20019ffc1aa650c28";
    dic[@"ts"] = @"1465020885";
    dic[@"goods_id"] = @"0";
    dic[@"store_shop_id"] = @"0";
    dic[@"store_type"] = @"1";
    dic[@"type"] = @"2";
    dic[@"woxin_id"] = @"10000054";
    
    [[WXTURLFeedOBJ sharedURLFeedOBJ]fetchNewDataFromFeedType:WXT_UrlFeed_Type_LoadBalance httpMethod:WXT_HttpMethod_Post timeoutIntervcal:-1 feed:dic completion:^(URLFeedData *retData) {
        if (retData.code == 0) {
             NSLog(@"%@",retData.data);
        }else{
             NSLog(@"%@",retData.errorDesc);
        }
       
    }];
    
//    // 1.创建一个网络路径
//    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://172.16.2.254/php/phonelogin?yourname=%@&yourpas=%@&btn=login",yourname,yourpass]];
//    // 2.创建一个网络请求
//    NSURLRequest *request =[NSURLRequest requestWithURL:url];
//    // 3.获得会话对象
//    NSURLSession *session = [NSURLSession sharedSession];
//    // 4.根据会话对象，创建一个Task任务：
//    NSURLSessionDataTask *sessionDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        NSLog(@"从服务器获取到数据");
//        /*
//         对从服务器获取到的数据data进行相应的处理：
//         */        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableLeaves) error:nil];
//    }];
//    // 5.最后一步，执行任务（resume也是继续执行）:
//    [sessionDataTask resume];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
