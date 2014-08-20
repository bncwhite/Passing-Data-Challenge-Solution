//
//  BWDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Bradley White on 8/18/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BWDetailViewControllerDelegate <NSObject>

@required
-(void)didUpdateText:(NSString *)text;


@end

@interface BWDetailViewController : UIViewController

@property (weak, nonatomic) id <BWDetailViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (nonatomic) NSString *passedData;
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)update:(UIButton *)sender;

@end
