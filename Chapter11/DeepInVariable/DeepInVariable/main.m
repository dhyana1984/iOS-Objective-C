//
//  main.m
//  DeepInVariable
//
//  Created by Chris Xiong on 2019/11/7.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "foo.h"
int gGlobalVar = 5;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *myFoo = [[Foo alloc] init];
        NSLog(@"%i", gGlobalVar);
        [myFoo setgGlobalVar:100];
        NSLog(@"%i",gGlobalVar);
    }
    return 0;
}
