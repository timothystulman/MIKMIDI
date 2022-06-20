//
//  MIKMIDISequencer+MIKMIDIPrivate.h
//  MIKMIDI
//
//  Created by Chris Flesner on 6/30/15.
//  Copyright (c) 2015 Mixed In Key. All rights reserved.
//

#ifdef SWIFTPM
#import "MIKMIDISequencer.h"
#import "MIKMIDICompilerCompatibility.h"
#else
#import <MIKMIDI/MIKMIDISequencer.h>
#import <MIKMIDI/MIKMIDICompilerCompatibility.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@interface MIKMIDISequencer (MIKMIDIPrivate)

- (void)dispatchSyncToProcessingQueueAsNeeded:(void (^)(void))block;

@end

NS_ASSUME_NONNULL_END
