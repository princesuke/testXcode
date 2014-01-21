//
//  SecondViewController.m
//  test
//
//  Created by Mobile's iMac on 1/13/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h";

@interface SecondViewController ()


@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = self.data[indexPath.row];
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ThirdViewController * thirdVC = [[ThirdViewController alloc] init];
    thirdVC.title = self.data[indexPath.row];
    thirdVC.myText1 = self.data[indexPath.row];
    
    [self.navigationController pushViewController:thirdVC animated:YES];
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
//    
//    if(cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
//    }
//    
//    cell.textLabel.text = @"Eric";
//    
//    return cell;
//}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.data = @[@"aa",@"bb",@"cc",@"dd",@"ee",@"ff"];


    
    UITableView *myTable = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    myTable.dataSource = self;
    myTable.delegate = self;
    
    [self.view addSubview:myTable];
    //self.data = [NSArray arrayWithObjects:@"aa", @"bb",@"cc", nil];
    
  
 // Do any additional setup after loading the view from its nib.
    //UITableView *tableView = [[[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped] ];
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
