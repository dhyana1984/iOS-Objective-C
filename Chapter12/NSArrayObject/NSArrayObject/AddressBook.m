//
//  AddressBook.m
//  NSArrayObject
//
//  Created by Chris Xiong on 2019/11/11.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook
-(id) initWithName:(NSString *)name{
    self = [super init];
    if(self){
        bookName = [[NSString alloc] initWithString:name];
        book = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void) addCard:(AddressCard *)theCard{
    [book addObject:theCard];
}
-(int) entries{
    return (int)[book count];
}
-(void) list{
    NSLog(@"================ Contents of :%@ ================)", bookName);
    for (AddressCard *theCard in book) {
        NSLog(@"%-20s   %-32s",[theCard.name UTF8String],[theCard.email UTF8String]);
    }
    NSLog(@"=================================================)");
}
-(AddressCard *) lookup:(NSString *) theName{
    for(AddressCard *nextCard in book){
        if([[nextCard name] caseInsensitiveCompare:theName] == NSOrderedSame){
            return nextCard;
        }
    }
    return nil;
}
-(void)sort{
    [book sortUsingSelector:@selector(compareNames:)];
}
@end
