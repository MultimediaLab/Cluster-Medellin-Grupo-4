//
//  ActualizarViewController.h
//  SQLite
//
//  Created by Profesor on 7/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Empleados.h"

@interface ActualizarViewController : UIViewController

@property Empleados * buscarEmpleado;
@property (strong, nonatomic) IBOutlet UITextField *searchText;

@property (strong, nonatomic) IBOutlet UITextField *nameTxt;
@property (strong, nonatomic) IBOutlet UITextField *cedulaTxt;
@property (strong, nonatomic) IBOutlet UITextField *cargoTxt;
@property (strong, nonatomic) IBOutlet UITextField *adressTxt;

@property (strong, nonatomic) IBOutlet UITextField *phoneTxt;
@property (strong, nonatomic) IBOutlet UILabel *resultTxt;
- (IBAction)updateEmpleado:(id)sender;
- (IBAction)searchEmpleado:(id)sender;

@end
