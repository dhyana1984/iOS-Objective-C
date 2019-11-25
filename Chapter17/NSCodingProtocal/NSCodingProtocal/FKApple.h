//
//  FKApple.h
//  NSCodingProtocal
//
//  Created by 熊绎 on 2019/11/26.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKApple : NSObject<NSCoding>
@property (nonatomic, copy) NSString* color;
@property (nonatomic, assign) double weight;
@property (nonatomic, assign) int size;
-(id) initWithColor:(NSString *) color weight:(double) weight size:(int)size;


@end

NS_ASSUME_NONNULL_END
