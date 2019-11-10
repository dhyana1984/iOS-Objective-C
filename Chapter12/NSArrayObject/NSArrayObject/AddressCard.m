//
//  AddressCard.m
//  NSArrayObject
//
//  Created by Chris Xiong on 2019/11/10.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name,email;

//一次性设置name和email
-(void) setName:(NSString *)theName andEmail:(NSString *)theEmail{
    self.name = theName;
    self.email = theEmail;
}

//-(void) setName:(NSString *)theName{
//    name = [[NSString alloc] initWithString:theName];
//}
//-(void) setEmail:(NSString *)theEmail{
//    email =[[NSString alloc] initWithString:theEmail];
//}
//-(NSString*) name{
//    return name;
//}
//-(NSString*) email{
//    return email;
//}
-(void) print{
    NSLog(@"================================");
    NSLog(@"|                              |");
    NSLog(@"|  %-31s  |",[name UTF8String]);
    NSLog(@"|  %-31s  |",[email UTF8String]);
    NSLog(@"|                              |");
    NSLog(@"|                              |");
    NSLog(@"|                              |");
    NSLog(@"|                              |");
    NSLog(@"================================");
}
-(NSComparisonResult) compareNames:(id) element{
//    使用compare:实现升序
//    return [name compare:[element name]];
    
//    自己实现倒序
    if(name < [element name]){
        return NSOrderedDescending;
    }else if(name >[element name]){
        return NSOrderedAscending;
    }else{
        return NSOrderedSame;
    }
}
@end
