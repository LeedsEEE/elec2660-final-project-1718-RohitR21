//
//  TracksDataModel.h
//  Sleep and Relaxation
//
//  Created by Rohit Rajkotia [el16rr] on 20/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AudioTracks.h"

@interface TracksDataModel : NSObject

@property(strong,atomic) NSMutableArray *fireAudioTracks;

@end
