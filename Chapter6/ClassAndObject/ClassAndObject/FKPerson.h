//
//  FKPerson.h
//  ClassAndObject
//
//  Created by Chris Xiong on 2019/10/31.
//  Copyright © 2019 org.chris. All rights reserved.
//

#ifndef FKPerson_h
#define FKPerson_h
#import <Foundation/Foundation.h>

@interface FKPerson : NSObject
{
    @private
    NSString *_name;
    int _age;
}
-(void) setName:(NSString *) name andAge:(int) age;
-(void) say:(NSString*) content;
-(NSString *) info;
+(void) foo;

@end


#endif /* FKPerson_h */
