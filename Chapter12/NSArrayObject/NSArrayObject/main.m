//
//  main.m
//  NSStringObject
//
//  Created by Chris Xiong on 2019/11/10.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"
#import "AddressCard.h"
#import "AddressBook.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array = @[
            [[FKUser alloc] initWithName:@"sun" pass:@"123"],
            [[FKUser alloc] initWithName:@"aac" pass:@"453"],
            [[FKUser alloc] initWithName:@"svh" pass:@"427"],
            [[FKUser alloc] initWithName:@"jfs" pass:@"734"],
            [[FKUser alloc] initWithName:@"rtf" pass:@"256"],
        ];
//        对数组元素整体调用方法
        [array makeObjectsPerformSelector:@selector(say:)  withObject:@"下午好，NSArry牛逼！"];
        NSString *content = @"iOS开发指南";
//        迭代指定范围内元素，使用该元素执行代码块
        [array enumerateObjectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)] options:NSEnumerationReverse usingBlock:^(id obj, NSUInteger idx, BOOL *stop){
            NSLog(@"正在处理第%lu个元素：%@",(unsigned long)idx,obj);
            [obj say:content];
        }];
        
        NSString *aName = @"Chris Xiong";
        NSString *aMail = @"aaa@aa.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        [card1 setName:aName];
        [card1 setEmail:aMail];
        [card1 print];
        
//      设置多个card
        NSString *bName = @"Tony Wang";
        NSString *bMail = @"bbb@bb.com";
        AddressCard *card2 = [[AddressCard alloc] init];
        [card2 setName:bName andEmail:bMail];
        NSString *cName = @"Lucy Zhang";
        NSString *cMail = @"ccc@cc.com";
        AddressCard *card3 = [[AddressCard alloc] init];
        [card3 setName:cName andEmail:cMail];
        NSString *dName = @"Peter Liu";
        NSString *dMail = @"ddd@dd.com";
        AddressCard *card4 = [[AddressCard alloc] init];
        [card4 setName:dName andEmail:dMail];
//       建立AddressBoolk
        AddressBook *myBook = [AddressBook alloc];
        myBook = [myBook initWithName:@"Chris' Address Book"];
        NSLog(@"Entries in address book after creation: %i",[myBook entries]);
//        添加一些地址簿
        [myBook addCard:card1];
        [myBook addCard:card2];
        [myBook addCard:card3];
        [myBook addCard:card4];
        NSLog(@"Entries in address book after add cards: %i",[myBook entries]);
        [myBook list];
//        按名字搜索
        NSLog(@"Lookup: Chris1 Xiong");
        AddressCard *myCard = [[AddressCard alloc] init];
        myCard = [myBook lookup:@"Chris1 Xiong"];
        if(myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found!");
//        尝试另一种查找
        NSLog(@"Lookup:Peter Liu");
        myCard = [myBook lookup:@"Peter Liu"];
        if(myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found!");
        [myBook list];
        [myBook sort];
        [myBook list];
        
        
        
        
        
        
        
    }
    return 0;
}
