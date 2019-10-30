//
//  FKPerson.m
//  ClassAndObject
//
//  Created by Chris Xiong on 2019/10/31.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

@implementation FKPerson
{
    int _testAttr;
}
-(void) setName:(NSString *) n andAge:(int) a
{
    _name = n;
    _age = a;
}
-(void) say:(NSString *)content
{
    NSLog(@"%@",content);
}
-(NSString*) info
{
    [self test];
    return [NSString stringWithFormat:@"我是一个好人，名字为：%@，年龄为：%d",_name,_age];
}
-(void) test
{
    NSLog(@"--只在实现部分定义的test方法--");
}
//类方法
+(void) foo
{
    NSLog(@"FKPerson类的方法，通过类名调用");
}
@end
