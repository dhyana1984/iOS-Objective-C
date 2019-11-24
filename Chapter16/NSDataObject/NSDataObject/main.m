//
//  main.m
//  NSDataObject
//
//  Created by 熊绎 on 2019/11/24.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import <Foundation/Foundation.h>
//使用下面宏使console输出不带时间戳等信息，单纯输出结果
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm;
        NSData *fileData;
        fm = [NSFileManager defaultManager];
        //读取testfile, 此时fileData是缓冲区
        fileData = [fm contentsAtPath: @"testfile"];
        if(fileData == nil){
            NSLog(@"File read failed");
            return 1;
        }
//        向newfile3写入数据
        if([fm createFileAtPath:@"newfile3" contents:fileData attributes:nil] == NO){
            NSLog(@"Couldn't create the copy!");
            return 2;
        }
        NSLog(@"File copy was successful!");
        
//        使用NSData读取指定URL对应的数据
        NSData* data =[NSData dataWithContentsOfURL:[NSURL URLWithString:@"Http://www.baidu.com"]];
        NSLog(@"%ld",[data length]);
        char buffer[100];
//        将NSData指定范围的数据读入数组
        [data getBytes:buffer range:NSMakeRange(103,100)];
//        输出数组内容
        NSLog(@"%s",buffer);
        NSString* content = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"-----输出网页内容-----");
        NSLog(@"%@",content);
    }
    return 0;
}
