//
//  CrossFaderAppDelegate.m
//  CrossFader
//
//  Created by arab stab on 5/07/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import "CrossFaderAppDelegate.h"
#import "DJMixerViewController.h"

@implementation CrossFaderAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	//start the audio
	djMixer = [[DJMixer alloc]init];	
	
	//[djMixer initialiseAudio];
	
	UINavigationController *navigationController = [UINavigationController new];
	DJMixerViewController *listViewController = [[DJMixerViewController alloc] initWithNibName:@"DJMixerView" bundle:[NSBundle mainBundle]];
	
	listViewController.djMixer = djMixer;
	
	[navigationController pushViewController:listViewController animated:NO];
	
	[listViewController release];
	
//	[window addSubview:navigationController.view];
    window.rootViewController = navigationController;
	// Override point for customization after application launch
    [window makeKeyAndVisible];
	
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
