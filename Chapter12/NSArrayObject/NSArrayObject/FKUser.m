//
//  FKUser.m
//  NSStringObject
//
//  Created by Chris Xiong on 2019/11/10.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "FKUser.h"
@implementation FKUser
-(id) initWithName:(NSString *)name pass:(NSString *)pass{
    if(self = [super init]){
        self->_name =name;
        self->_pass =pass;
    }
    return self;
}
-(void) say:(NSString*) content{
    NSLog(@"%@说：%@",self.name,content);
}
-(BOOL) isEqual:(id) other{
    if(self == other)
        return YES;
    if([other class] == FKUser.class){
        FKUser* target =(FKUser*) other;
        return [self.name isEqualToString:target.name] && [self.pass isEqualToString:target.pass];
    }
    return NO;
}
@end

