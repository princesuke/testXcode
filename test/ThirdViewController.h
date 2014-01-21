//
//  ThirdViewController.h
//  test
//
//  Created by kingmaster09 on 1/21/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController <UITextFieldDelegate>

@property (copy, nonatomic) NSString *myText1;
@property (weak, nonatomic) IBOutlet  UILabel *myLabel1;
@property (nonatomic, assign) NSInteger myIndexPath;

@property (strong, nonatomic) IBOutlet UITextField *myTextField;

@end
