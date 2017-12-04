//
//  WaterTableViewController.h
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia [el16rr] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "MusicControlViewController.h"
#import "WaterTracksDataModel.h"

@interface WaterTableViewController : UITableViewController

@property (strong,nonatomic) WaterTracksDataModel *data;


@end
