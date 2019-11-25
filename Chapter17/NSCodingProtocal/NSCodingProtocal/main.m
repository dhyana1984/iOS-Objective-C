//
//  main.m
//  NSCodingProtocal
//
//  Created by 熊绎 on 2019/11/26.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKApple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        FKApple * apple = [[FKApple alloc] initWithColor:@"Red" weight:3.4 size:20];
////        对apple对象进行归档
//        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:apple requiringSecureCoding:NO error:nil];
//        NSFileManager *fm = [NSFileManager defaultManager];
//        [fm createFileAtPath:@"apple" contents:data attributes:nil];
        
//        从归档中恢复
//        NSFileHandle *fh = [NSFileHandle fileHandleForReadingAtPath:@"apple"];
//        NSData *data = [fh readDataToEndOfFile];
//        [fh closeFile];
//        FKApple *apple = [NSKeyedUnarchiver unarchivedObjectOfClass:[FKApple class] fromData:data error:nil];
//        NSLog(@"Apple color is %@", apple.color);
//        NSLog(@"Apple size is %d", apple.size);
        
//        利用归档进行深复制
        NSDictionary *dict = @{
            @"1":[[FKApple alloc] initWithColor:@"red" weight:1.2 size:5],
            @"2":[[FKApple alloc] initWithColor:@"green" weight:2.3 size:6]
        };
//        归档对象，写入NSData
        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:dict requiringSecureCoding:NO error:nil];
//        从NSData中获取对象，实现深复制
        NSDictionary *dictionary  = [NSKeyedUnarchiver unarchivedObjectOfClass:[FKApple class] fromData:data error:nil];
        FKApple *newApple = dictionary[@"1"];
        NSLog(@"%@",newApple.color);
        
    }
    return 0;
}
