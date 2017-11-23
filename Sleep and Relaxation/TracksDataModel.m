//
//  TracksDataModel.m
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia [el16rr] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TracksDataModel.h"

@implementation TracksDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire = [[AudioTracks alloc] init];
        fire.trackID = 1;
        fire.trackName = @"track 1";
        
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire2 = [[AudioTracks alloc] init];
        fire2.trackID = 2;
        fire2.trackName = @"track 2";
        
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire3 = [[AudioTracks alloc] init];
        fire3.trackID = 3;
        fire3.trackName = @"track 3";
        
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire4 = [[AudioTracks alloc] init];
        fire4.trackID = 4;
        fire4.trackName = @"track 4";
        
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire5 = [[AudioTracks alloc] init];
        fire5.trackID = 5;
        fire5.trackName = @"track 5";
        
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire6 = [[AudioTracks alloc] init];
        fire6.trackID = 6;
        fire6.trackName = @"track 6";
        
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire7 = [[AudioTracks alloc] init];
        fire7.trackID = 7;
        fire7.trackName = @"track 7";
        
        self.fireAudioTracks = [NSMutableArray array];
        AudioTracks *fire8 = [[AudioTracks alloc] init];
        fire8.trackID = 8;
        fire8.trackName = @"track 8";
        
        //Add to array code:
        [self.fireAudioTracks addObject:fire];  //index 0
        [self.fireAudioTracks addObject:fire2]; //index 1
        [self.fireAudioTracks addObject:fire3]; //index 2
        [self.fireAudioTracks addObject:fire4]; //index 3
        [self.fireAudioTracks addObject:fire5]; //index 4
        [self.fireAudioTracks addObject:fire6]; //index 5
        [self.fireAudioTracks addObject:fire7]; //index 6
        [self.fireAudioTracks addObject:fire8]; //index 7
        
    }
    return self;
}

@end
