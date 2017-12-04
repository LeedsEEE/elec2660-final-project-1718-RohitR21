//
//  ViewController.h
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia [el16rr] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SleepCalculatorViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *wakePicker;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)calcBedTime:(UIButton *)sender;
@end
