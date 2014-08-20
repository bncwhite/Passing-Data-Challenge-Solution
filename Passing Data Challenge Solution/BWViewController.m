//
//  BWViewController.m
//  Passing Data Challenge Solution
//
//  Created by Bradley White on 8/18/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import "BWViewController.h"
#import "BWDetailViewController.h"

@interface BWViewController ()

@end

@implementation BWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue.destinationViewController isKindOfClass:[BWDetailViewController class]]) {
            BWDetailViewController *detailVC = [BWDetailViewController new];
            detailVC = segue.destinationViewController;
            detailVC.passedData = self.textField.text;
            detailVC.delegate = self;
        }
    }
}

-(void)didUpdateText:(NSString *)text
{
    self.textField.text = text;
}

@end
