//
//  OneNodeAppDelegate.m
//  OneNode
//
//  Created by Aran Mulholland on 2/08/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import "OneNodeAppDelegate.h"
#import "OneNodeViewController.h"
#import "AudioPlayback.h"
#import "InMemoryAudioFile.h"

@implementation OneNodeAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    	
	OneNodeViewController *oneNodeViewController = [[OneNodeViewController alloc] initWithNibName:@"OneNodeViewController" bundle:[NSBundle mainBundle]];
	
	InMemoryAudioFile *inMemoryAudioFile = [[InMemoryAudioFile alloc]init];
	[inMemoryAudioFile open:[[NSBundle mainBundle] pathForResource:@"808 loop" ofType:@"wav"]];

	//set up the audio playback
	oneNodeViewController.audioPlayback = [[AudioPlayback alloc]init];	
		
	oneNodeViewController.audioPlayback.inMemoryAudioFile = inMemoryAudioFile;
	
	//init the audio, this usually takes a little bit of time, it should probably be done on a seperate thread
	[oneNodeViewController.audioPlayback initAudioGraph];
	
	UINavigationController *navigationController = [UINavigationController new];
	[navigationController pushViewController:oneNodeViewController animated:NO];
	
	[oneNodeViewController release];
	
	[window addSubview:navigationController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
