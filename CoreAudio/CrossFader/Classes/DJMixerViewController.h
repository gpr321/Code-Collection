//
//  DJMixerViewController.h
//  CrossFader
//
//  Created by arab stab on 5/07/09.
//  Copyright 2009 Aran Mulholland. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DJMixer.h"

@interface DJMixerViewController : UIViewController <UITableViewDelegate> {

	DJMixer *djMixer;
	
	IBOutlet UISlider *channelOneVolumeSlider;
	IBOutlet UISlider *channelTwoVolumeSlider;
	IBOutlet UISlider *crossFaderSlider;
}

@property (nonatomic, retain)DJMixer *djMixer;

-(void)changeVolume:(id)sender;

-(IBAction)playPause;

@end
