//
//  BWDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by Bradley White on 8/18/14.
//  Copyright (c) 2014 Bradley White. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BWDetailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (nonatomic) NSString *passedData;

@end
