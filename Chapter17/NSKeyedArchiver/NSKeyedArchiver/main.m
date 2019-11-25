//
//  main.m
//  NSKeyedArchiver
//
//  Created by 熊绎 on 2019/11/25.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        简化语法创建NSDictionary对象
        NSDictionary *dict = @{
            @"Objective-C":[NSNumber numberWithInt:89],
            @"Ruby":[NSNumber numberWithInt:69],
            @"Python":[NSNumber numberWithInt:75],
            @"Perl":[NSNumber numberWithInt:109]
        };
//        对dict对象进行归档，使用archivedDataWithRootObject先放到NSData，再用NSFileManager存到硬盘
//        NSData *data = [NSKeyedArchiver archivedDataWithRootObject:dict requiringSecureCoding:NO error:nil];
//        NSFileManager *fm = [NSFileManager defaultManager];
//        if([fm createFileAtPath:@"mydict.archive" contents:data attributes:nil]==NO){
//            NSLog(@"Create file failed");
//            return 1;
//        }
//        NSLog(@"Archive successfully");
        
        
        
//        读取归档先用NSFileHandle读取文件到NSData，再用unarchivedObjectOfClass还原成原来的类型
        NSFileHandle *fh =[NSFileHandle fileHandleForReadingAtPath:@"mydict.archive"];
        NSData *data = [fh readDataToEndOfFile];
        [fh closeFile];
        NSDictionary *unArchiveData = [NSKeyedUnarchiver unarchivedObjectOfClass:[NSDictionary class] fromData:data error:nil];
        for(NSString *key in unArchiveData){
            NSLog(@"Key: %@, Value: %@",key,unArchiveData[key]);
        }
        
    }
    return 0;
}
