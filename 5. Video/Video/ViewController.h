//
//  ViewController.h
//  Video
//
//  Created by Profesor on 24/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *viewVideo;


@property MPMoviePlayerController * reproductor;

@end

