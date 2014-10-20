#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

//Tap
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;
- (IBAction)handleTap:(id)sender;

@property (strong, nonatomic) IBOutlet UIImageView *mico;

@property AVAudioPlayer * audiojejeje;
@property AVAudioPlayer * audioMordisco;

@end

