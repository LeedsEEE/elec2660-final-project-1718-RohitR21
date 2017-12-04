//
//  MusicControlViewController.h
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioTracks.h"

@interface MusicControlViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *trackLabel;

- (IBAction)rewindButton:(UIButton *)sender;
- (IBAction)playButton:(UIButton *)sender;
- (IBAction)forwardButton:(UIButton *)sender;
- (IBAction)loopButton:(UIButton *)sender;

//to display the data recieved:
@property (strong,nonatomic) AudioTracks *audiotracks;
@property (strong,nonatomic) AudioTracks *waterAudiotracks;


@end
