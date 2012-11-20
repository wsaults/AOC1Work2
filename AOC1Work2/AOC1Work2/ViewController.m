//
//  ViewController.m
//  AOC1Work2
//
//  Created by Will Saults on 11/19/12. AOC1_1212
//  Copyright (c) 2012 Fullsail. All rights reserved.
//

#import "ViewController.h"
#import "Definitions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create the array.
    NSArray *listOfItemsArray = [[NSArray alloc] initWithObjects:@"Elmo", @"Potty", @"Baby David", @"Sounds", @"Buttons!", nil];
    NSMutableString *listOfItemsString = [NSMutableString new];
    
    // Loop through the array and when you hit the last item do not add the comma.
    for (NSArray *item in listOfItemsArray) {
        if (![[listOfItemsArray lastObject]  isEqual:item]) {
            [listOfItemsString appendString:[NSString stringWithFormat:@"%@, ",item]];
        } else {
            [listOfItemsString appendString:[NSString stringWithFormat:@"%@",item]];
        }
    }
    
#pragma mark - Container
    // Create the container view.
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [containerView setBackgroundColor:[UIColor colorWithRed:0.925 green:0.91 blue:0.89 alpha:1]]; /*#ece8e3*/
    
#pragma mark - Title
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
    
#pragma mark - Author    
    // Create the author header label.
    UILabel *authorHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, kLabelHeaderWidth, kLabelHeight)];
    [authorHeader setBackgroundColor:[UIColor clearColor]];
    [authorHeader setText:@"Author:"];
    [authorHeader setFont:kLabelHeaderFontSize];
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
    [author setTextColor:kLabelTextColor];
    
#pragma mark - Published
    // Create the published header.
    UILabel *publishedHeader = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                         authorHeader.frame.origin.y + authorHeader.frame.size.height + kLabelMargin,
                                                                         kLabelHeaderWidth,
                                                                         kLabelHeight)];
    [publishedHeader setBackgroundColor:[UIColor clearColor]];
    [publishedHeader setText:@"Published:"];
    [publishedHeader setFont:kLabelHeaderFontSize];
    [publishedHeader setTextAlignment:NSTextAlignmentRight];
    [publishedHeader setTextColor:kLabelHeaderTextColor];
    
    // Create the published label.
    UILabel *published = [[UILabel alloc] initWithFrame:CGRectMake(publishedHeader.frame.size.width + kLabelMargin,
                                                                 publishedHeader.frame.origin.y,
                                                                 containerView.frame.size.width - kLabelHeaderWidth - kLabelMargin,
                                                                   kLabelHeight)];
    [published setBackgroundColor:[UIColor clearColor]];
    [published setText:@"2008"];
    [published setFont:kLabelFontSize];
    [published setTextAlignment:NSTextAlignmentLeft];
    [published setTextColor:kLabelTextColor];
    
#pragma mark - Summary
    // Create the summary header label.
    UILabel *summaryHeader = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                                   publishedHeader.frame.origin.y + publishedHeader.frame.size.height + kLabelMargin,
                                                                   kLabelHeaderWidth,
                                                                   kLabelHeight)];
    [summaryHeader setBackgroundColor:[UIColor clearColor]];
    [summaryHeader setText:@"Summary"];
    [summaryHeader setFont:kLabelHeaderFontSize];
    [summaryHeader setTextAlignment:NSTextAlignmentLeft];
    [summaryHeader setTextColor:kLabelHeaderTextColor];
    
    // Create the summary label.
    UILabel *summary = [[UILabel alloc] initWithFrame:CGRectMake(kLabelMargin,
                                                               summaryHeader.frame.origin.y + summaryHeader.frame.size.height,
                                                               containerView.frame.size.width - kLabelMargin*2,
                                                               170)];
    [summary setBackgroundColor:[UIColor clearColor]];
    [summary setText:@"Potty time with Elmo is all about teaching your child about using the potty. Elmo makes using the potty seem like no big deal when he takes his stuffed pall Baby David to use the potty. This book is full of visual cues that signify when to press the included buttons for action-packed sounds that's sure to get your youne one excied about the potty. \nMy son loves this book!"];
    [summary setFont:kLabelFontSize];
    [summary setTextAlignment:NSTextAlignmentCenter];
    [summary setTextColor:kLabelTextColor];
    [summary setNumberOfLines:10];

#pragma mark - List of items
    // Create the list of items header label.
    UILabel *listOfItemsHeader = [[UILabel alloc] initWithFrame:CGRectMake(0,
                                                               summary.frame.origin.y + summary.frame.size.height + kLabelMargin,
                                                               100,
                                                               kLabelHeight)];
    [listOfItemsHeader setBackgroundColor:[UIColor clearColor]];
    [listOfItemsHeader setText:@"List Of items:"];
    [listOfItemsHeader setFont:kLabelHeaderFontSize];
    [listOfItemsHeader setTextAlignment:NSTextAlignmentLeft];
    [listOfItemsHeader setTextColor:kLabelHeaderTextColor];
    
    // Create the list of items label.
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(kLabelMargin,
                                                                 listOfItemsHeader.frame.origin.y + listOfItemsHeader.frame.size.height,
                                                                 containerView.frame.size.width - kLabelMargin*2,
                                                                 60)];
    [listOfItems setBackgroundColor:[UIColor clearColor]];
    [listOfItems setText:listOfItemsString];
    [listOfItems setFont:kLabelFontSize];
    [listOfItems setTextAlignment:NSTextAlignmentCenter];
    [listOfItems setTextColor:kLabelTextColor];
    [listOfItems setNumberOfLines:3];
    
#pragma mark - Add subvies
    // Add the subviews
    [self.view addSubview:containerView];
    [containerView addSubview:bookTitle];
    [containerView addSubview:bookSubtitle];
    [containerView addSubview:authorHeader];
    [containerView addSubview:author];
    [containerView addSubview:publishedHeader];
    [containerView addSubview:published];
    [containerView addSubview:summaryHeader];
    [containerView addSubview:summary];
    [containerView addSubview:listOfItemsHeader];
    [containerView addSubview:listOfItems];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
