//
//  NSNumber+fk.m
//  Category
//
//  Created by Chris Xiong on 2019/11/4.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "NSNumber+fk.h"
@implementation NSNumber(fk)
-(NSNumber*) add :(double) num2
{
    return [NSNumber numberWithDouble:[self doubleValue] + num2];
}
-(NSNumber*) substract :(double) num2
{
    return [NSNumber numberWithDouble:[self doubleValue] - num2];
}
-(NSNumber*) multiply :(double) num2
{
    return [NSNumber numberWithDouble:[self doubleValue] * num2];
}
-(NSNumber*) divide :(double) num2
{
    return [NSNumber numberWithDouble:[self doubleValue] / num2];
}

@end
