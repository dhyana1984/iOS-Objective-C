//
//  AddressBook.h
//  NSArrayObject
//
//  Created by Chris Xiong on 2019/11/11.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
NS_ASSUME_NONNULL_BEGIN

@interface AddressBook : NSObject
{
    NSString *bookName;
    NSMutableArray *book;
}
-(id) initWithName:(NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(int) entries;
-(void) list;
-(AddressCard *) lookup :(NSString*) theName;
-(void)sort;
@end

NS_ASSUME_NONNULL_END
