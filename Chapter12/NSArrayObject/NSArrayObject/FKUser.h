//
//  FKUser.m
//  NSStringObject
//
//  Created by Chris Xiong on 2019/11/10.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FKUser :NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *pass;
-(id) initWithName:(NSString*) aName pass:(NSString*) aPass;
-(void) say:(NSString*) content;
@end
