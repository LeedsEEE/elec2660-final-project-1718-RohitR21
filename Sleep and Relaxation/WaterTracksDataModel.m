//
//  WaterTracksDataModel.m
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "WaterTracksDataModel.h"

@implementation WaterTracksDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water = [[AudioTracks alloc]init];
        water.trackID = 1;
        water.trackName = @"Water Track 1";
        
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water2 = [[AudioTracks alloc]init];
        water2.trackID = 2;
        water2.trackName = @"Water Track 2";
        
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water3 = [[AudioTracks alloc]init];
        water3.trackID = 3;
        water3.trackName = @"Water Track 3";
        
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water4 = [[AudioTracks alloc]init];
        water4.trackID = 4;
        water4.trackName = @"Water Track 4";
        
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water5 = [[AudioTracks alloc]init];
        water5.trackID = 5;
        water5.trackName = @"Water Track 5";
        
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water6 = [[AudioTracks alloc]init];
        water6.trackID = 6;
        water6.trackName = @"Water Track 6";
        
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water7 = [[AudioTracks alloc]init];
        water7.trackID = 7;
        water7.trackName = @"Water Track 7";
        
        self.waterAudioTracks = [NSMutableArray array];
        AudioTracks *water8 = [[AudioTracks alloc]init];
        water8.trackID = 8;
        water8.trackName = @"Water Track 8";
        
        //Add to array code:
        [self.waterAudioTracks addObject:water];
        [self.waterAudioTracks addObject:water2];
        [self.waterAudioTracks addObject:water3];
        [self.waterAudioTracks addObject:water4];
        [self.waterAudioTracks addObject:water5];
        [self.waterAudioTracks addObject:water6];
        [self.waterAudioTracks addObject:water7];
        [self.waterAudioTracks addObject:water8];
        
    }
    return self;
}

@end
