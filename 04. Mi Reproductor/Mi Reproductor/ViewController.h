//
//  ViewController.h
//  Mi Reproductor
//
//  Created by Profesor on 22/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController <AVAudioPlayerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageSong;
@property (strong, nonatomic) IBOutlet UILabel *timeSong;

@property (strong, nonatomic) IBOutlet UIProgressView *progressSong;

- (IBAction)playButton:(id)sender;
- (IBAction)pauseButton:(id)sender;
- (IBAction)stopButton:(id)sender;
- (IBAction)nextSong:(id)sender;
- (IBAction)prevSong:(id)sender;

- (IBAction)changeOptions:(id)sender;

- (IBAction)changeVolume:(id)sender;
- (IBAction)changeRate:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *containerView;

@property AVAudioPlayer * reproductor;


@end

