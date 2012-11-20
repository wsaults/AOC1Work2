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
    
    // Create the container view.
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [containerView setBackgroundColor:[UIColor colorWithRed:0.925 green:0.91 blue:0.89 alpha:1]]; /*#ece8e3*/
    
    // Create the book title label.
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, containerView.frame.size.width, 30)];
    [bookTitle setBackgroundColor:[UIColor clearColor]];
    [bookTitle setText:@"Potty Time with Elmo"];
    [bookTitle setFont:[UIFont boldSystemFontOfSize:16]];
    [bookTitle setTextAlignment:NSTextAlignmentCenter];
    [bookTitle setTextColor:[UIColor colorWithRed:1 green:0.31 blue:0.141 alpha:1]]; /*#ff4f24*/
    
    // Create the book sub title.
    UILabel *bookSubtitle = [[UILabel alloc] initWithFrame:CGRectMake(0, bookTitle.frame.origin.y + bookTitle.frame.size.height, containerView.frame.size.width, 20)];
    [bookSubtitle setBackgroundColor:[UIColor clearColor]];
    [bookSubtitle setText:@"Play-a-Sound Book - Sesame Street"];
    [bookSubtitle setFont:[UIFont systemFontOfSize:12]];
    [bookSubtitle setTextAlignment:NSTextAlignmentCenter];
    
    // Create the author header label.
    UILabel *authorHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 75, 20)];
    // background color
    [authorHeader setText:@"Author:"];
    [authorHeader setFont:[UIFont boldSystemFontOfSize:14]];
    [authorHeader setTextAlignment:NSTextAlignmentRight];
    [authorHeader setTextColor:[UIColor colorWithRed:0.361 green:0.475 blue:0.169 alpha:1]]; /*#5c792b*/
    
    // Create the authro label.
    
    // Add the subviews
    [self.view addSubview:containerView];
    [containerView addSubview:bookTitle];
    [containerView addSubview:bookSubtitle];
    [containerView addSubview:authorHeader];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
