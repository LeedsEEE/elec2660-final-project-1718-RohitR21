//
//  WaterTracksDataModel.h
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia on 23/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AudioTracks.h"

@interface WaterTracksDataModel : NSObject

//array to store water tracks information
@property (strong,nonatomic) NSMutableArray *waterAudioTracks;

@end
