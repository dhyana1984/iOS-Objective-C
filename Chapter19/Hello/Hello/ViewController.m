//
//  ViewController.m
//  Hello
//
//  Created by 熊绎 on 2019/11/28.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController
@synthesize userOutput;
@synthesize userInput;
- (void)viewDidLoad {
    [super viewDidLoad];
   
}



- (IBAction)setOutput:(id)sender {
//    NSLog(@"%@",userOutput.text);
    NSLog(@"%@",userInput.text);
}
@end
