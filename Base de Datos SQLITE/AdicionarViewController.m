//
//  AdicionarViewController.m
//  Base de Datos SQLITE
//
//  Created by Profesor on 8/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "AdicionarViewController.h"

@interface AdicionarViewController ()

@end

@implementation AdicionarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    empleadoNuevo = [[Empleados alloc] init];
}
- (IBAction)guardarEmpleado:(id)sender {
    empleadoNuevo.empName = _nameTxt.text;
    empleadoNuevo.empCedula = _cedulaTxt.text;
    empleadoNuevo.empJob = _cargoTxt.text;
    empleadoNuevo.empPhone = _celularTxt.text;
    empleadoNuevo.empAdress = _direccionTxt.text;
    [empleadoNuevo insertEmployedInDatabase];
    
    _resultadoTxt.text = empleadoNuevo.status;
    
    [self.view endEditing:YES];
    
    _nameTxt.text = _cedulaTxt.text = _celularTxt.text = _cargoTxt.text = _direccionTxt.text = nil;
}
@end
