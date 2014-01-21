//
//  ThirdViewController.m
//  test
//
//  Created by kingmaster09 on 1/21/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"

@interface ThirdViewController ()


@end

@implementation ThirdViewController

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
    self.view.layer.borderWidth = 1;
    self.view.layer.borderColor = [UIColor greenColor].CGColor;
    // Do any additional setup after loading the view from its nib.
    UILabel * mylabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];

    mylabel1.textColor = [UIColor blackColor];
    mylabel1.text = self.myText1;
    mylabel1.textAlignment = NSTextAlignmentCenter;
    mylabel1.layer.borderWidth = 1;
    mylabel1.layer.borderColor = [UIColor redColor].CGColor;
    
    
    // center button
//    CGRect currentFrame = mylabel1.frame;
//    currentFrame.origin.x = (CGRectGetWidth(self.view.frame) - CGRectGetWidth(currentFrame)) / 2;
//    currentFrame.origin.y =(CGRectGetHeight(self.view.frame) - CGRectGetHeight(currentFrame)) / 2;
//    
//    mylabel1.frame = currentFrame;
    mylabel1.center = self.view.center;
    
    [self.view addSubview:mylabel1];
    

    UITextField * myTextField = [[UITextField alloc] initWithFrame:CGRectMake(0, 200, 100, 50)];
    CGRect currentTextField = myTextField.frame;
    currentTextField.origin.x = (CGRectGetWidth(self.view.frame) - CGRectGetWidth(currentTextField)) / 2;
    myTextField.frame = currentTextField;
    myTextField.backgroundColor = [UIColor grayColor];
    myTextField.layer.borderWidth =1;
    myTextField.layer.borderColor = [UIColor blackColor].CGColor;
    myTextField.text = self.myText1;
    myTextField.textAlignment = NSTextAlignmentCenter;
    myTextField.delegate = self;
    [self.view addSubview:myTextField];
    
    self.myTextField.text = self.myText1;
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    //NSLog(@"You entered %@", textField.text);

}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"You entered %@", textField.text);
    
    [textField resignFirstResponder];
    
    SecondViewController  * secondVC = [[SecondViewController alloc] init];
    secondVC.textValue = textField.text;
    secondVC.rowValue = self.myIndexPath;
    
     NSLog(@"text = %@ , rowValue = %d", textField.text,self.myIndexPath);
    
    [self.navigationController pushViewController:secondVC animated:YES];

    return YES;
}


      
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
