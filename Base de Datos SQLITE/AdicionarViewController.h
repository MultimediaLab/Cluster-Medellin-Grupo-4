
#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface AdicionarViewController : UIViewController
{
    Empleados * empleadoNuevo;
}
- (IBAction)guardarEmpleado:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *nameTxt;
@property (strong, nonatomic) IBOutlet UITextField *cedulaTxt;
@property (strong, nonatomic) IBOutlet UITextField *cargoTxt;
@property (strong, nonatomic) IBOutlet UITextField *celularTxt;
@property (strong, nonatomic) IBOutlet UITextField *direccionTxt;
@property (strong, nonatomic) IBOutlet UILabel *resultadoTxt;
@end
