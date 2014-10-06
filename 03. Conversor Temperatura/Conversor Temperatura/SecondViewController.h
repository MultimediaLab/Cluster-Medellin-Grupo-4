#import <UIKit/UIKit.h>
#import "Convertidor.h"

@interface SecondViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *numberConvert;
- (IBAction)convertTemperature:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *resultConvert;
@end

