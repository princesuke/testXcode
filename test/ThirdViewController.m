//
//  ThirdViewController.m
//  test
//
//  Created by kingmaster09 on 1/21/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "ThirdViewController.h"


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
    // Do any additional setup after loading the view from its nib.
    UILabel * mylabel1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];

    mylabel1.textColor = [UIColor blackColor];
    mylabel1.text = self.myText1;
    mylabel1.textAlignment = NSTextAlignmentCenter;
    mylabel1.layer.borderWidth = 1;
    mylabel1.layer.borderColor = [UIColor redColor].CGColor;
    
    
    // center button
    CGRect currentFrame = mylabel1.frame;
    currentFrame.origin.x = (CGRectGetWidth(self.view.frame) - CGRectGetWidth(currentFrame)) / 2;
    currentFrame.origin.y =(CGRectGetHeight(self.view.frame) - CGRectGetHeight(currentFrame)) / 2;
    
    mylabel1.frame = currentFrame;
    
    
    [self.view addSubview:mylabel1];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
