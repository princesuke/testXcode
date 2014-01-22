//
//  EditNameViewController.h
//  test
//
//  Created by Mobile's iMac on 1/22/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EditNameViewController;

@protocol EditNameViewControllerDelegate <NSObject>

- (void)editViewController:(EditNameViewController *)editVC gotNewName:(NSString *)name;

@end



@interface EditNameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (nonatomic, weak) id<EditNameViewControllerDelegate> delegate;

- (IBAction)submitButtonPressed:(id)sender;



@end
