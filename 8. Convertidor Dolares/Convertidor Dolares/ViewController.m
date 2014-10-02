//
//  ViewController.m
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    Person *persona = [[Person alloc] init];
    persona.userName = _txtName.text;
    persona.password = _txtPasswd.text;
    if ([persona isUserAutentified]) {
        return YES;
    }else{
        alerta = [[UIAlertView alloc]
                  initWithTitle:@"Error"
                  message:@"Usuario o contraseña incorrecto" delegate:self cancelButtonTitle:@"Aceptar" otherButtonTitles:nil];
        [alerta show];
        
    }
    return NO;
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    _txtName.text = nil;
    _txtPasswd.text = nil;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    segundaVista = [segue destinationViewController];
    segundaVista.dataTransfer = _txtName.text;
}
@end
