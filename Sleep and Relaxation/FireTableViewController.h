//
//  TableViewController.h
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia [el16rr] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "TracksDataModel.h"
#import "MusicControlViewController.h" //imported to create a local MuiscControlViewController copy.

@interface FireTableViewController : UITableViewController
//data model object created to access track information from tracks data model.
@property (strong,nonatomic) TracksDataModel *data;




@end
