//
//  MIKMIDISourceEndpoint.h
//  MIDI Testbed
//
//  Created by Andrew Madsen on 3/8/13.
//  Copyright (c) 2013 Mixed In Key. All rights reserved.
//

#import "MIKMIDIEndpoint.h"
#import "MIKMIDICompilerCompatibility.h"

NS_ASSUME_NONNULL_BEGIN

/**
 *  MIKMIDISourceEndpoint represents a source (input) MIDI endpoint.
 *  It is essentially an Objective-C wrapper for instances of CoreMIDI's MIDIEndpoint class
 *  which are kMIDIObjectType_Source type endpoints.
 *
 *  MIDI source endpoints are contained by MIDI entities, which are in turn contained by MIDI devices.
 *  MIDI sources can be connected in order to receive data from them using MIKMIDIDeviceManager's
 *  -connectInput:error:eventHandler:virtualDestinations method.
 *
 *  Note that MIKMIDISourceEndpoint does not declare any methods of its own. All its methods can be
 *  found on its superclasses: MIKMIDIEndpoint and MIKMIDIObject.
 *  
 *  @see -[MIKMIDIDeviceManager connectInput:error:eventHandler:virtualDestinations]
 *  @see -[MIKMIDIDeviceManager disconnectInput:]
 */
@interface MIKMIDISourceEndpoint : MIKMIDIEndpoint

@end

NS_ASSUME_NONNULL_END