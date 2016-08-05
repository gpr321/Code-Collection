//
//  OneNodeAppDelegate.h
//  OneNode
//
//  Created by Aran Mulholland on 2/08/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import <UIKit/UIKit.h>


@class OneNodeViewController;

@interface OneNodeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    OneNodeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet OneNodeViewController *viewController;

@end

