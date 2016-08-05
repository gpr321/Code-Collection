//
//  RemoteIOTestAppDelegate.h
//  RemoteIOTest
//
//  Created by Aran Mulholland on 3/03/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RemoteIOTestViewController;

@interface RemoteIOTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RemoteIOTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RemoteIOTestViewController *viewController;

@end

