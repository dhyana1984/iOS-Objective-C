//
//  NSArray.m
//  Foundation
//
//  Created by Chris Xiong on 2019/11/9.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "NSArrayFunction.h"
#define MAXPRIME 50

@implementation NSArrayFunction
-(void)NSArrayFunction{
    NSArray *array =[NSArray arrayWithObjects:@"iOS开发指南",@"Objective-C开发指南",@"Swift开发之南",@"iOS范例大全",@"aaa", nil];
    NSLog(@"第一个元素：%@",[array objectAtIndex:0]);
//    这里的最后一个元素不是arrayWithObjects最后一个nil
    NSLog(@"最后一个元素：%@",[array lastObject]);
//    获取元素在数组中位置
    NSLog(@"aaa的位置为：%ld", [array indexOfObject:@"aaa"]);
//    获取元素在数组指定范围中的位置,NSMakeRange的意思是从第二个开始，往后数3个
    NSLog(@"aaa在2-5范围中的位置为：%ld",[array indexOfObject:@"aaa" inRange:NSMakeRange(2, 3)]);
//    向数组追加元素，返回新数组
    array = [array arrayByAddingObject:@"bbb"];
//    向数组追加另一个数组所有元素
    array = [array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"dd",@"ee", nil]];
    for (int i=0; i<array.count; i++) {
        NSLog(@"%@",array[i]);
    }
//    获取从索引为2的元素开始的3个元素构成的新数组
    NSArray * arr1 = [array objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 3)]];
    NSLog(@"%@",arr1);
//    获取array数字中索引为5-8的所有元素
    NSArray *arr2 = [array subarrayWithRange:NSMakeRange(5, 3)];
//    将NSArray数组的元素写入文件
    [arr2 writeToFile:@"myFile.txt" atomically:YES];
    [self getPrimes];

}
-(void) getPrimes{
    int i,p,prevPrime;
    BOOL isPrime;
    NSMutableArray *primes = [NSMutableArray arrayWithCapacity:20];
    [primes addObject:[NSNumber numberWithInteger:2]];
    [primes addObject:[NSNumber numberWithInteger:3]];
    for (p=5; p<=MAXPRIME; p+=2) {
        isPrime = YES;
        i = 1;
        do{
            prevPrime = [[primes objectAtIndex:i]  integerValue];
            if(p% prevPrime ==0){
                isPrime = NO;
        }
            ++i;
        }while (isPrime == YES && p/prevPrime >= prevPrime);
        if(isPrime){
            [primes addObject:[NSNumber numberWithInteger:p]];
        }
    }
    for(i=0;i<[primes count]; ++i){
        NSLog(@"%li",(long)[[primes objectAtIndex:i] integerValue]);
    }
    
    
}
@end
