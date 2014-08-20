//
//  BWDetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by Bradley White on 8/18/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import "BWDetailViewController.h"

@interface BWDetailViewController () <UITextFieldDelegate>

@end

@implementation BWDetailViewController

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
    // Do any additional setup after loading the view.
    self.label.text = self.passedData;
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}

- (IBAction)update:(UIButton *)sender
{
//    if ([self textFieldShouldReturn:self.textField]) {
//        self.textField.text = @"";
//        [self.textField resignFirstResponder];
//    }
    
    self.label.text = self.textField.text;
    [self.delegate didUpdateText:self.textField.text];
    self.textField.text = @"";
}
@end
