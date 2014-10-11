//
//  EliminarViewController.h
//  Base de Datos SQLITE
//
//  Created by Profesor on 10/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface EliminarViewController : UIViewController{
    Empleados * empleadoBorrar;
}
@property (strong, nonatomic) IBOutlet UITextField *cedulaTxt;
- (IBAction)deleteUser:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *resultadoTxt;

@end
