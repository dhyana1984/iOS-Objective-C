//
//  ClassA.h
//  Inherit
//
//  Created by Chris Xiong on 2019/11/2.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ClassA : NSObject{
    int x;
}
-(void) setX;
-(int) getId : (int) n : (NSString*) p;
-(NSString*) getId;
@end

NS_ASSUME_NONNULL_END
