//
//  ViewController.m
//  Base de Datos SQLITE
//
//  Created by Profesor on 8/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"
#import "Empleados.h"

@interface ViewController ()
@property Empleados * empleado;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _empleado = [[Empleados alloc] init];
    [_empleado createDatabaseInDocuments];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
