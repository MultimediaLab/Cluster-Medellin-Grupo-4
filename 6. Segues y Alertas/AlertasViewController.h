
#import <UIKit/UIKit.h>

@interface AlertasViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>
{
    UIAlertView * alerta;

}

- (IBAction)alertaSimple:(id)sender;
- (IBAction)alertaCampos:(id)sender;
- (IBAction)hojaAcciones:(id)sender;
@end
