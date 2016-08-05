//
//  RemoteIOPlayer.h
//  RemoteIOTest
//
//  Created by Aran Mulholland on 3/03/09.
//  Copyright 2009 Aran Mulholland. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InMemoryAudioFile.h"

@interface RemoteIOPlayer : NSObject {
	InMemoryAudioFile *inMemoryAudioFile;
}

@property (nonatomic, retain) InMemoryAudioFile *inMemoryAudioFile;

-(OSStatus)start;
-(OSStatus)stop;
-(void)cleanUp;
-(void)intialiseAudio;

@end
