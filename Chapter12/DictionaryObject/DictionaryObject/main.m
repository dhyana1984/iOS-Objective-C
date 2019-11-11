//
//  main.m
//  DictionaryObject
//
//  Created by Chris Xiong on 2019/11/11.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        可变字典用setObject设置新的键值对， 可变对象是线程不安全的
        NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
        [glossary setObject:@"aaaa" forKey:@"1"];
        [glossary setObject:@"bbbb" forKey:@"2"];
        [glossary setObject:@"cccc" forKey:@"3"];
        NSLog(@"the a value %@",[glossary objectForKey:@"1"]);
        
//        不可变字典用dictionaryWithObjectsAndKeys设置键值对，value1,key1,value2,key2...
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"aaaa",@"1",@"bbb",@"2",@"ccc",@"3", nil];
        NSLog(@"the c value %@",[dictionary objectForKey:@"3"]);
        
    }
    return 0;
}
