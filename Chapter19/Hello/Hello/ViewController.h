//
//  ViewController.h
//  Hello
//
//  Created by 熊绎 on 2019/11/28.
//  Copyright © 2019 熊绎. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *userOutput;


@property (strong, nonatomic) IBOutlet UITextField *userInput;

- (IBAction)setOutput:(id)sender;

@end
