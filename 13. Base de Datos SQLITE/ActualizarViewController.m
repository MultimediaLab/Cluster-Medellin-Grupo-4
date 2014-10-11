//
//  ActualizarViewController.m
//  SQLite
//
//  Created by Profesor on 7/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ActualizarViewController.h"

@interface ActualizarViewController ()

@end

@implementation ActualizarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _buscarEmpleado = [[Empleados alloc] init];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)searchEmpleado:(id)sender {
    _buscarEmpleado.empCedula = _searchText.text;
    
    [_buscarEmpleado searchEmployedInDatabase];
    
    _resultTxt.text = _buscarEmpleado.status;
    _nameTxt.text = _buscarEmpleado.empName;
    _cedulaTxt.text = _buscarEmpleado.empCedula;
    _cargoTxt.text = _buscarEmpleado.empJob;
    _phoneTxt.text = _buscarEmpleado.empPhone;
    _adressTxt.text = _buscarEmpleado.empAdress;
    
    [self.view endEditing:YES];
}
- (IBAction)updateEmpleado:(id)sender{
    
    _buscarEmpleado.empName = _nameTxt.text;
    _buscarEmpleado.empCedula = _cedulaTxt.text;
    _buscarEmpleado.empJob = _cargoTxt.text;
    _buscarEmpleado.empPhone = _phoneTxt.text;
    _buscarEmpleado.empAdress = _adressTxt.text;
    
    [_buscarEmpleado updateEmployedInDatabase];
    
    _resultTxt.text = _buscarEmpleado.status;
    
    [self.view endEditing:YES];
}
@end
