//
//  main.m
//  Archive
//
//  Created by 熊绎 on 2019/11/25.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:@"value1",@"key1",@"value2",@"key2",@"value3",@"key3", nil];
//        if([glossary writeToFile:@"glossary" atomically:YES] == NO){
//            NSLog(@"Save to file failed");
//            return 1;
        
        NSDictionary *glossary;
        glossary = [NSDictionary dictionaryWithContentsOfFile:@"glossary"];
        for(NSString *key in glossary){
            NSLog(@"%@: %@",key,[glossary objectForKey:key]);
        
        }
    }
    return 0;
}
