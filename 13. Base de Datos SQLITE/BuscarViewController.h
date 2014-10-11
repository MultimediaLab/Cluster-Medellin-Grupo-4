#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface BuscarViewController : UIViewController
{
    Empleados * empleadoBuscar;
}
@property (strong, nonatomic) IBOutlet UITextField *cedulaBuscar;

- (IBAction)buscarEmpleado:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *nameTxt;
@property (strong, nonatomic) IBOutlet UILabel *cedulaTxt;
@property (strong, nonatomic) IBOutlet UILabel *cargoTxt;
@property (strong, nonatomic) IBOutlet UILabel *celularTxt;
@property (strong, nonatomic) IBOutlet UILabel *direccionTxt;
@property (strong, nonatomic) IBOutlet UILabel *resultadoTxt;

@end
