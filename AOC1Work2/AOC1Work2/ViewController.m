//
//  ViewController.m
//  AOC1Work2
//
//  Created by Will Saults on 11/19/12.
//  Copyright (c) 2012 UTVCA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [containerView setBackgroundColor:[UIColor colorWithRed:0.925 green:0.91 blue:0.89 alpha:1]]; /*#ece8e3*/
    
    // Add the subviews
    [self.view addSubview:containerView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
