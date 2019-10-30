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
        [myFraction setDenominator:3];
        NSLog(@"The value of myFraction is :");
        [myFraction print];
    }
    return 0;
}
