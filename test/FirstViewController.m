//
//  FirstViewController.m
//  test
//
//  Created by Mobile's iMac on 1/13/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "EditNameViewController.h"

@interface FirstViewController () <UIAlertViewDelegate,EditNameViewControllerDelegate>

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.myLabel.text = @"Hello";
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender {
    
    
    SecondViewController *secondVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (IBAction)editNameButtonPressed:(id)sender {

    EditNameViewController *editVC = [[EditNameViewController alloc] initWithNibName:@"EditNameViewController" bundle:nil];
    editVC.delegate = self;
    //[self.navigationController pushViewController:editVC animated:YES];
    [self presentViewController:editVC animated:YES completion:nil];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        self.myLabel.text = @"Hello, World";
    }
}


- (void)gotNewName:(NSString *)name
{
    NSLog(@"%@",name);
}

- (void)editViewController:(EditNameViewController *)editVC gotNewName:(NSString *)name
{
    self.nameLabel.text = name;
}


@end
