//
//  main.m
//  Inherit
//
//  Created by Chris Xiong on 2019/11/2.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClassB.h"
#import "FKSub.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *classB = [[ClassB alloc] init];
        [classB setX];
        [classB printX];
        FKSub* sub = [[FKSub alloc] init];
        [sub accessOwner];
        return 0;
    }
    return 0;
}
