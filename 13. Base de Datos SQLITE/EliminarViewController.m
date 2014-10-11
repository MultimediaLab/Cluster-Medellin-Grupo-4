//
//  EliminarViewController.m
//  Base de Datos SQLITE
//
//  Created by Profesor on 10/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "EliminarViewController.h"

@interface EliminarViewController ()

@end

@implementation EliminarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    empleadoBorrar = [[Empleados alloc] init];
}
- (IBAction)deleteUser:(id)sender {
    empleadoBorrar.empCedula = _cedulaTxt.text;
    [empleadoBorrar deleteEmployedInDatabase];
    _resultadoTxt.text = empleadoBorrar.status;
    
}
@end
