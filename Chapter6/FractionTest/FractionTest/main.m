//
//  main.m
//  FractionTest
//
//  Created by Chris Xiong on 2019/10/31.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        [myFraction setNumerator:2];
        myFraction.denominator = 3;
        NSLog(@"The value of myFraction is :");
        [myFraction print];
        [myFraction setTo:4 over:5];
        [myFraction print];
        [myFraction setTo:7  over:8];
        [myFraction print];
        Fraction *aF = [[Fraction alloc] init];
        Fraction *bF = [[Fraction alloc] init];
        [aF setTo:1 over:4];
        [bF setTo:1 over:2];
        [aF print];
        NSLog(@"+");
        [bF print];
        NSLog(@"=");
        [aF add:bF];
//        [aF reduce];
        [aF print];
        
        
    }
    return 0;
}
