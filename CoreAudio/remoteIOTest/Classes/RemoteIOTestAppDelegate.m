//
//  RemoteIOTestAppDelegate.m
//  RemoteIOTest
//
//  Created by Aran Mulholland on 3/03/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import "RemoteIOTestAppDelegate.h"
#import "RemoteIOTestViewController.h"

@implementation RemoteIOTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
