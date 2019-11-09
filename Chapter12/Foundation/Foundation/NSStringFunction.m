//
//  NSString.m
//  Foundation
//
//  Created by Chris Xiong on 2019/11/9.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "NSStringFunction.h"

@implementation NSStringFunctions
-(void) NSStringOperation{
    unichar data[6] = {97, 98, 99, 100, 101, 102};
    NSString* str = [[NSString alloc] initWithCharacters:data length:6];
    NSLog(@"%@",str);
    char* cstr = "Hello, iOS!";
    //将C风格的字符串转换为NSString对象
    NSString* str2 = [NSString stringWithUTF8String:cstr];
    NSLog(@"%@",str2);
    //将字符串写入文件
    [str2 writeToFile:@"myfile.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSString* str3 = [NSString stringWithContentsOfFile:@"NSStringTest.m" encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@",str3);
    
    //处理可变长度字符串
    NSString* book = @"《ios开发指南》";
    NSMutableString* str4 = [NSMutableString stringWithString:@"Hello"];
    //追加固定字符串
    [str4 appendString:@", iOS!"];
    NSLog(@"%@",str4);
    //追加带变量的字符串
    [str4 appendFormat:@"%@是一本很好的开发书.", book];
    //在指定位置插入字符串
    [str4 insertString:@"www.aaa.com" atIndex:6];
    NSLog(@"%@",str4);
    //删除从位置5开始，长度为12的所有字符
    [str4 deleteCharactersInRange:NSMakeRange(6, 12)];
    NSLog(@"%@",str4);
    //从位置6，长度为9的所有字符替换
    [str4 replaceCharactersInRange:NSMakeRange(6,9) withString:@"Objective-C"];
    NSLog(@"%@",str4);
    
    
    //处理不可变对象
    NSString *str1 = @"This is string A";
    str2 = @"This is sting B";
    NSString *res;
    NSComparisonResult compareResult;
    NSLog(@"str1的长度：%lu",[str1 length]);
    res = [NSString stringWithString:str1];
    NSLog(@"复制：%@",res);
    str2 = [str1 stringByAppendingString:str2];
    NSLog(@"连接：%@",str2);
    if([str1 isEqualToString:res]){
        NSLog(@"str1==res");
    }else{
        NSLog(@"str1!=res");
    }
    compareResult = [str1 compare:str2];
    if(compareResult == NSOrderedAscending){
        NSLog(@"str1<str2");
    }else if(compareResult == NSOrderedSame){
        NSLog(@"str1==str2");
    }else{
        NSLog(@"str1>str2");
    }
    
    
}
@end
