
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>


@property (strong, nonatomic) IBOutlet UIBarButtonItem *takePhoto;
- (IBAction)takePhotoButton:(id)sender;

- (IBAction)takePhotoAlbum:(id)sender;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

