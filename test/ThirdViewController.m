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
    UILabel * mylabel1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 200, 100)];
    mylabel1.textColor = [UIColor blackColor];
    mylabel1.text = self.myText1;
    
    
    [self.view addSubview:mylabel1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
