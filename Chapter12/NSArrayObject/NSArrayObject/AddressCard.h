//
//  AddressCard.h
//  NSArrayObject
//
//  Created by Chris Xiong on 2019/11/10.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
//使用下面宏使console输出不带时间戳等信息，单纯输出结果
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String])

NS_ASSUME_NONNULL_BEGIN

@interface AddressCard : NSObject
{
    NSString *name;
    NSString *email;
}
//手工设置name 和email属性的方法
//-(void) setName :(NSString *) theName;
//-(void) setEmail:(NSString*) theEmail;
//-(NSString*) name;
//-(NSString*) email;


//系统自动设置属性
@property (copy, nonatomic) NSString *name, *email;
-(void) setName:(NSString * )theName andEmail:(NSString *) theEmail;
-(void) print;

@end

NS_ASSUME_NONNULL_END
