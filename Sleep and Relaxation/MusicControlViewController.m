//
//  MusicControlViewController.m
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MusicControlViewController.h"

@interface MusicControlViewController ()

@end

@implementation MusicControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //To update labels as soon as view opens:
    self.trackLabel.text = self.audiotracks.trackName;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)rewindButton:(UIButton *)sender {
}

- (IBAction)playButton:(UIButton *)sender {
}

- (IBAction)forwardButton:(UIButton *)sender {
}

- (IBAction)loopButton:(UIButton *)sender {
}
@end
