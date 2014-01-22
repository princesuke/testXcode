//
//  FirstViewController.h
//  test
//
//  Created by Mobile's iMac on 1/13/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

- (IBAction)buttonClicked:(id)sender;
- (IBAction)editNameButtonPressed:(id)sender;

@end
