//
//  FKApple.m
//  NSCodingProtocal
//
//  Created by 熊绎 on 2019/11/26.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import "FKApple.h"

@implementation FKApple
-(id) initWithColor:(NSString *)color weight:(double)weight size:(int)size
{
    if(self = [super init]){
        self ->_color = color;
        self ->_weight = weight;
        self ->_size = size;
    }
    return self;
}
//重写父类的description方法
-(NSString*) description{
    return [NSString stringWithFormat:@"<FKApple[_color=%@,_weight=%g       ,_size=%d]>",self.color,self.weight,self.size];
}
- (void)encodeWithCoder:( NSCoder *)coder {
//    调用NSCode的方法归档该对象的每个成员变量
    [coder encodeObject:_color forKey:@"color"];
    [coder encodeDouble:_weight forKey:@"weight"];
    [coder encodeInt:_size forKey:@"size"];
}

- (id)initWithCoder:( NSCoder *)coder {
//    使用NSCode以此恢复color, weigt, size这3个键所对应的值，并将恢复的值赋给当前对象的3个成员变量
    _color = [coder decodeObjectForKey:@"color"];
    _weight = [coder decodeDoubleForKey:@"weight"];
    _size =[coder decodeIntForKey:@"size"];
    return self;
}

@end
