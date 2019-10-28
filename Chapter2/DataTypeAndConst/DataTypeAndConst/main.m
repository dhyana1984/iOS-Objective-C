//
//  main.m
//  DataTypeAndConst
//
//  Created by Chris Xiong on 2019/10/28.
//  Copyright © 2019 org.chris. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a,b,c,d;
        unsigned u;
        u = 10;
        a = 12;
        b = -24;
        c = a + u;
        d = b + u;
        NSLog(@"a+u=%i, b+u=%i",c,d);
        
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        NSLog(@"floatingVar = %f",floatingVar); //%f用浮点表示
        NSLog(@"doubleVar = %e",doubleVar);     //%e用浮点的科学计数法表示
        NSLog(@"doubleVar = %g",doubleVar);     //%g用简短的科学计数法表示
        
        char t = 120;
        char m = 121;
        NSLog(@"%c,%c",t,m);
        NSLog(@"%i,%i",t,m);
    }
    return 0;
}
