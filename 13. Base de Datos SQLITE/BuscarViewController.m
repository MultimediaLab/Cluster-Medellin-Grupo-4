//
//  BuscarViewController.m
//  Base de Datos SQLITE
//
//  Created by Profesor on 10/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "BuscarViewController.h"

@interface BuscarViewController ()

@end

@implementation BuscarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    empleadoBuscar = [[Empleados alloc] init];
}
- (IBAction)buscarEmpleado:(id)sender {
    empleadoBuscar.empCedula = _cedulaBuscar.text;
    [empleadoBuscar searchEmployedInDatabase];
    
    _resultadoTxt.text = empleadoBuscar.status;
    _nameTxt.text = empleadoBuscar.empName;
    _cedulaTxt.text = empleadoBuscar.empCedula;
    _cargoTxt.text = empleadoBuscar.empJob;
    _celularTxt.text = empleadoBuscar.empPhone;
    _direccionTxt.text = empleadoBuscar.empAdress;
}
@end
