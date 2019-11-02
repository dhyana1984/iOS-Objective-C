//
//  FKParent.m
//  Inherit
//
//  Created by Chris Xiong on 2019/11/2.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "FKParent.h"

@implementation FKParent
-(id) init{
    if(self = [super init]){
        self->_a = 5;
    }
    return self;
}
@end
