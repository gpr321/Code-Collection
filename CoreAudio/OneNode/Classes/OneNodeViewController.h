//
//  OneNodeViewController.h
//  OneNode
//
//  Created by Aran Mulholland on 2/08/09.
//  Copyright Aran Mulholland 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioPlayback.h"

@interface OneNodeViewController : UIViewController {

	AudioPlayback *audioPlayback;
}

@property (nonatomic, retain)AudioPlayback *audioPlayback;

-(IBAction)play;

@end

