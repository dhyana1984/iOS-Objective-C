//
//  FKSub.m
//  Inherit
//
//  Created by Chris Xiong on 2019/11/2.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "FKSub.h"

@implementation FKSub
{
    int _a;
}
-(id)init{
    if(self = [super init]){
        self -> _a = 7;
    }
    return self;
}
-(void)accessOwner{
    NSLog(@"子类中_a成员变量：%d",_a);
    NSLog(@"父类中被隐藏的_a成员变量：%d",super.a);
}
@end
