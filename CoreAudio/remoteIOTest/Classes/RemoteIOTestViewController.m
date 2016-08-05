//
//  RemoteIOTestViewController.m
//  RemoteIOTest
//
//  Created by Aran Mulholland on 3/03/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#include <AudioToolbox/AudioToolbox.h>
#import "RemoteIOTestViewController.h"

#import "InMemoryAudioFile.h"

@implementation RemoteIOTestViewController

@synthesize player;

//start the audio
- (IBAction)startPushed {
	//reset the audio file to start from the beginning
	[[player inMemoryAudioFile]reset];
	[player start];
}

//stop the audio
- (IBAction)stopPushed {
    [player stop];
}

// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	//allocate the audio player
	player = [[RemoteIOPlayer alloc]init];
	//initialise the audio player
	[player intialiseAudio];
	//initialise the inMemoryAudiofile (holds a wav file in memory)
	InMemoryAudioFile *inMemoryAudioFile = [[InMemoryAudioFile alloc]init];
	//open the a wav file from the application resources
	[inMemoryAudioFile open:[[NSBundle mainBundle] pathForResource:@"funkBeats" ofType:@"wav"]];
	//set the players inMemoryAudioFile
	[player setInMemoryAudioFile: inMemoryAudioFile];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
}


- (void)dealloc {
	[player cleanUp];
	[player release]; 
    [super dealloc];
}

@end
