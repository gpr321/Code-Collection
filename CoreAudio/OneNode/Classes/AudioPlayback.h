//
//  AudioPlayback.h
//  OneNode
//
//  Created by Aran Mulholland on 2/08/09.
//  Copyright 2009 Aran Mulholland. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <AudioUnit/AudioUnit.h>
#import "AudioToolbox/AudioToolbox.h"
#import "InMemoryAudioFile.h"

@interface AudioPlayback : NSObject {
	
	//the graph of audio connections
	AUGraph graph;
	
	//the audio output
	AudioUnit outputAudioUnit;
	
	//the audio file to play
	InMemoryAudioFile *inMemoryAudioFile;
	
}

@property(nonatomic, retain)InMemoryAudioFile *inMemoryAudioFile;

-(void)initAudioGraph;

@end
