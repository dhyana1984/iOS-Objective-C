//
//  foo.m
//  DeepInVariable
//
//  Created by Chris Xiong on 2019/11/7.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "foo.h"

@implementation Foo
-(void) setgGlobalVar:(int) val
{
    extern int gGlobalVar;
    gGlobalVar = val;
}
@end
