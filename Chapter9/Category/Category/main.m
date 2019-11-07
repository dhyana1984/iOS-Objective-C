//
//  main.m
//  Category
//
//  Created by Chris Xiong on 2019/11/4.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSNumber+fk.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber* myNum = [NSNumber numberWithDouble:3];
        NSNumber* add = [myNum add:2.4];
        NSLog(@"%@",add);
        NSNumber* substract = [myNum substract:2.4];
        NSLog(@"%@",substract);
        NSNumber* multiply = [myNum multiply:2.4];
        NSLog(@"%@",multiply);
        NSNumber* divide = [myNum divide:2.4];
        NSLog(@"%@",divide);
        
    }
    return 0;
}
