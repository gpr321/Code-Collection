//
//  CrossFaderAppDelegate.h
//  CrossFader
//
//  Created by arab stab on 5/07/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DJMixer.h"

@interface CrossFaderAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	DJMixer *djMixer;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

