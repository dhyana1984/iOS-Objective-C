//
//  Fraction.m
//  FractionTest
//
//  Created by Chris Xiong on 2019/10/31.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction

@synthesize numerator, denominator;
-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}
//-(void) setNumerator: (int) n
//{
//    numerator = n;
//}
//-(void) setDenominator: (int) d
//{
//    denominator = d;
//}
//-(int) numerator
//{
//    return numerator;
//}
//-(int) denominator
//{
//    return denominator;
//}
-(double) convertToNum
{
    if(denominator != 0)
        return (double) numerator/denominator;
    else
        return 1.0;
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
}
-(void) add :(Fraction *) f
{
    numerator = numerator * f.denominator + denominator*f.numerator;
    denominator = denominator * f.denominator;
    [self reduce];
}
-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while(v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}
@end
