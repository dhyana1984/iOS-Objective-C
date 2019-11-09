//
//  main.m
//  NSStringObject
//
//  Created by Chris Xiong on 2019/11/10.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[
            [[FKUser alloc] initWithName:@"sun" pass:@"123"],
            [[FKUser alloc] initWithName:@"aac" pass:@"453"],
            [[FKUser alloc] initWithName:@"svh" pass:@"427"],
            [[FKUser alloc] initWithName:@"jfs" pass:@"734"],
            [[FKUser alloc] initWithName:@"rtf" pass:@"256"],
        ];
//        对数组元素整体调用方法
        [array makeObjectsPerformSelector:@selector(say:)  withObject:@"下午好，NSArry牛逼！"];
        NSString *content = @"iOS开发指南";
//        迭代指定范围内元素，使用钙元素执行代码块
        [array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)] options:NSEnumerationReverse usingBlock:^(id obj, NSUInteger idx, BOOL *stop){
            NSLog(@"正在处理第%lu个元素：%@",(unsigned long)idx,obj);
            [obj say:content];
        }];
    }
    return 0;
}
