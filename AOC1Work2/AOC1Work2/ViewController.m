//
//  ViewController.m
//  AOC1Work2
//
//  Created by Will Saults on 11/19/12.
//  Copyright (c) 2012 UTVCA. All rights reserved.
//

#import "ViewController.h"
#define kLabelMargin 5
#define kLabelHeaderWidth 75
#define kLabelTitleHeight 30
#define kLabelHeight 20
#define kLabelFontSize [UIFont systemFontOfSize:14]
#define kLabelHeaderTextColor [UIColor colorWithRed:0.361 green:0.475 blue:0.169 alpha:1] /*#5c792b*/

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
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, containerView.frame.size.width, kLabelTitleHeight)];
    [bookTitle setBackgroundColor:[UIColor clearColor]];
    [bookTitle setText:@"Potty Time with Elmo"];
    [bookTitle setFont:[UIFont boldSystemFontOfSize:16]];
    [bookTitle setTextAlignment:NSTextAlignmentCenter];
    [bookTitle setTextColor:[UIColor colorWithRed:1 green:0.31 blue:0.141 alpha:1]]; /*#ff4f24*/
    
    // Create the book sub title.
    UILabel *bookSubtitle = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                      bookTitle.frame.origin.y +
                                                                      bookTitle.frame.size.height,
                                                                      containerView.frame.size.width, kLabelHeight)];
    [bookSubtitle setBackgroundColor:[UIColor clearColor]];
    [bookSubtitle setText:@"Play-a-Sound Book - Sesame Street"];
    [bookSubtitle setFont:[UIFont systemFontOfSize:12]];
    [bookSubtitle setTextAlignment:NSTextAlignmentCenter];
    
    // Create the author header label.
    UILabel *authorHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, kLabelHeaderWidth, kLabelHeight)];
    [authorHeader setBackgroundColor:[UIColor clearColor]];
    [authorHeader setText:@"Author:"];
    [authorHeader setFont:kLabelFontSize];
    [authorHeader setTextAlignment:NSTextAlignmentRight];
    [authorHeader setTextColor:kLabelHeaderTextColor];
    
    // Create the author label.
    UILabel *author = [[UILabel alloc] initWithFrame:CGRectMake(authorHeader.frame.size.width + kLabelMargin,
                                                                authorHeader.frame.origin.y,
                                                                containerView.frame.size.width - kLabelHeaderWidth - kLabelMargin,
                                                                kLabelHeight)];
    [author setBackgroundColor:[UIColor clearColor]];
    [author setText:@"Kelli Kaufmann"];
    [author setFont:kLabelFontSize];
    [author setTextAlignment:NSTextAlignmentLeft];
    [author setTextColor:[UIColor colorWithRed:1 green:0.31 blue:0.141 alpha:1]]; /*#ff4f24*/
    
    // Create the published header.
    UILabel *publishedHeader = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                         authorHeader.frame.origin.y +
                                                                         authorHeader.frame.size.height +
                                                                         kLabelMargin, kLabelHeaderWidth, kLabelHeight)];
    [publishedHeader setBackgroundColor:[UIColor clearColor]];
    [publishedHeader setText:@"Published:"];
    [publishedHeader setFont:kLabelFontSize];
    [publishedHeader setTextAlignment:NSTextAlignmentRight];
    [publishedHeader setTextColor:kLabelHeaderTextColor];
    
    // Add the subviews
    [self.view addSubview:containerView];
    [containerView addSubview:bookTitle];
    [containerView addSubview:bookSubtitle];
    [containerView addSubview:authorHeader];
    [containerView addSubview:author];
    [containerView addSubview:publishedHeader];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
