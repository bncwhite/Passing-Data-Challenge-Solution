//
//  BWViewController.h
//  Passing Data Challenge Solution
//
//  Created by Bradley White on 8/18/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BWDetailViewController.h"

@interface BWViewController : UIViewController <BWDetailViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextField *textField;

@end
