//
//  Fraction.h
//  FractionTest
//
//  Created by Chris Xiong on 2019/10/31.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}
@property int numerator,denominator;
-(void) print;
-(void) setTo: (int) n over:(int) d;
//-(void) setNumerator: (int) n;
//-(void) setDenominator: (int) d;
//-(int) numerator;
//-(int) denominator;
-(double) convertToNum;
-(void) add: (Fraction *) f;
-(void) reduce;
@end

NS_ASSUME_NONNULL_END
