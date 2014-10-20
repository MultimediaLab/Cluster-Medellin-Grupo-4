#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

//Tap
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tapGesture;
- (IBAction)handleTap:(id)sender;

//Pan
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panGesture;
- (IBAction)handlePan:(id)sender;

//Pinch
@property (strong, nonatomic) IBOutlet UIPinchGestureRecognizer *pinchGesture;
- (IBAction)handlePinch:(id)sender;

//Rotation
- (IBAction)handleRotation:(id)sender;
@property (strong, nonatomic) IBOutlet UIRotationGestureRecognizer *rotationGesture;


@property (strong, nonatomic) IBOutlet UIImageView *mico;

@property AVAudioPlayer * audiojejeje;
@property AVAudioPlayer * audioMordisco;

- (IBAction)programarDesayuno:(id)sender;

@end

