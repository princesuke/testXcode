//
//  SecondViewController.h
//  test
//
//  Created by Mobile's iMac on 1/13/2557 BE.
//  Copyright (c) 2557 Mobile's iMac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *data;

@property(nonatomic,assign) NSInteger rowValue;
@property (copy, nonatomic) NSString *textValue;

@end
