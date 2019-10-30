//
//  main.m
//  ClassAndObject
//
//  Created by Chris Xiong on 2019/10/30.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
@end

@implementation Fraction

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}
-(void) setNumerator: (int) n
{
    numerator = n;
}
-(void) setDenominator: (int) d;
{
    denominator = d;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        Fraction *myFraction;
//        myFraction = [Fraction alloc];
//        myFraction = [myFraction init];
//        myFraction = [[Fraction alloc] init];
//        Fraction *myFraction = [[Fraction alloc] init];
//
//        [myFraction setNumerator:2];
//        [myFraction setDenominator:3];
//
//        NSLog(@"The value of myFraction is:");
//        [myFraction print];
        
        FKPerson *person = [[FKPerson alloc] init];
        [person say:@"Hello 我爱iOS"];
        [person setName:@"贝尔" andAge:500];
        NSString* info = [person info];
        NSLog(@"person的info信息为：%@",info);
        [FKPerson foo];
        FKPerson* p2 = person;
        
    }
    return 0;
}
