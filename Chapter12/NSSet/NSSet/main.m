//
//  main.m
//  NSSet
//
//  Created by Chris Xiong on 2019/11/11.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
//创建integer对象
#define INTOBJ(v) [NSNumber numberWithInt:v]
//添加打印方法和输出类
@interface  NSSet(Printing)
-(void) print;
@end

@implementation NSSet(Printing)
-(void) print{
    printf("{");
    for (NSNumber *element in self)
        printf(" %li ",(long)[element integerValue]);
    printf("}\n");
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableSet *set1 = [NSMutableSet setWithObjects:INTOBJ(1),INTOBJ(3),INTOBJ(5),INTOBJ(10),nil];
        NSSet *set2 = [NSSet setWithObjects:INTOBJ(-5),INTOBJ(100),INTOBJ(3),INTOBJ(5),nil];
        NSSet *set3 =[NSSet setWithObjects:INTOBJ(12),INTOBJ(200),INTOBJ(3),nil];
        NSLog(@"set1:");
        [set1 print];
        NSLog(@"set2:");
        [set2 print];
        if([set1 isEqualToSet:set2]){
            NSLog(@"set1 equals set2");
        }else{
            NSLog(@"set1 is not equal set2");
        }
        if([set1 containsObject:INTOBJ(4)]){
            NSLog(@"set1 contain 4");
        }else{
            NSLog(@"set1 does not contain 4");
        }
        [set1 addObject:INTOBJ(8)];
        [set1 removeObject:INTOBJ(10)];
        NSLog(@"set1:");
        [set1 print];
            
 
        
        
    }
    return 0;
}
