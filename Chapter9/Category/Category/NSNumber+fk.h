//
//  NSNumber+fk.h
//  Category
//
//  Created by Chris Xiong on 2019/11/4.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//为NSNumber定义fk类别
@interface NSNumber(fk)
-(NSNumber*) add :(double) num2;
-(NSNumber*) substract :(double) num2;
-(NSNumber*) multiply :(double) num2;
-(NSNumber*) divide :(double) num2;
@end

NS_ASSUME_NONNULL_END
