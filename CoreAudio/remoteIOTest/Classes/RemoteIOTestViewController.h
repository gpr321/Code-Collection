//
//  RemoteIOTestViewController.h
//  RemoteIOTest
//
//  Created by Aran Mulholland on 3/03/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
//should i be importing or including this?
#import "RemoteIOPlayer.h"

@interface RemoteIOTestViewController : UIViewController {
	RemoteIOPlayer *player;
}

@property (nonatomic, retain) RemoteIOPlayer *player;

- (IBAction)startPushed;
- (IBAction)stopPushed;
@end

