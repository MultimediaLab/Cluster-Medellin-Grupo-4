//
//  ViewController.m
//  Mi Reproductor
//
//  Created by Profesor on 22/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer * progressTimer;
    NSArray * audios;
    NSString * currentSong;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadSong:@"demo" andImage:@"imagen.jpg"];
}
-(void)loadSong:(NSString*)nameSong andImage:(NSString*)image{
    NSString * ruta = [[NSBundle mainBundle] pathForResource:nameSong ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    NSError * error;
    
    _reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    _reproductor.volume = 1;
    _reproductor.pan = 0.5;
    _reproductor.rate = 1;
    _reproductor.enableRate = YES;
    _reproductor.numberOfLoops = -1;
    _reproductor.delegate = self;
    
    [_reproductor prepareToPlay];
    
    _imageSong.image = [UIImage imageNamed:image];
}
-(NSString*)timeConverter:(float)value{
    int minuts = (int)(value/60) % 60;
    int seconds = (int)value % 60;
    return [NSString stringWithFormat:@"%02i:%02i", minuts, seconds];
}

///ACTION DE LOS BOTONES ADELANTE Y ATRAS
- (IBAction)nextSong:(id)sender {
    [_reproductor stop];
    currentSong = [[_reproductor.url absoluteString] lastPathComponent];
    if ([currentSong isEqualToString:@"demo.mp3"]) {
        [self loadSong:@"NY NY USA" andImage:@"imagen.jpg"];
    }else{
        [self loadSong:@"demo" andImage:@"imagen.jpg"];
    }
    [_reproductor play];
}
- (IBAction)prevSong:(id)sender {
    [_reproductor stop];
    [self loadSong:@"demo" andImage:@"imagen.jpg"];
    [_reproductor play];
}
-(void)updateProgressBar{
    _progressSong.progress = _reproductor.currentTime / _reproductor.duration;
    _timeSong.text = [self timeConverter:_reproductor.currentTime];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/////

- (IBAction)playButton:(id)sender {
    [_reproductor play];
    
    progressTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateProgressBar) userInfo:nil repeats:YES];
}

- (IBAction)pauseButton:(id)sender {
    [_reproductor pause];
}

- (IBAction)stopButton:(id)sender {
    _reproductor.currentTime = 0;
    [_reproductor stop];
    [progressTimer invalidate];
}



- (IBAction)changeOptions:(id)sender {
    UISwitch * control = sender;
    if (control.on) {
        _containerView.hidden=NO;
    }else{
        _containerView.hidden=YES;
    }
    /////
    //_containerView.hidden = !((UISwitch*) sender).on;
}

- (IBAction)changeVolume:(id)sender {
    _reproductor.volume = ((UISlider *) sender).value;
}

- (IBAction)changeRate:(id)sender {
    _reproductor.rate = ((UISlider *) sender).value;

}


@end
