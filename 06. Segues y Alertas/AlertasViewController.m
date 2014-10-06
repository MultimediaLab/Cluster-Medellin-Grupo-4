//
//  AlertasViewController.m
//  Segues y Alertas
//
//  Created by Profesor on 24/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "AlertasViewController.h"

@interface AlertasViewController ()

@end

@implementation AlertasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)alertaSimple:(id)sender {
    alerta = [[UIAlertView alloc] initWithTitle:@"Error"
                                        message:@"Hola iOS desde una Alerta"
                                       delegate:self
                              cancelButtonTitle:@"Aceptar"
                              otherButtonTitles:@"Cancelar", @"Omitir", nil];
    alerta.tag = 1;
    [alerta show];
    
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (alertView.tag == 1) {
        switch (buttonIndex) {
            case 0:
                NSLog(@"Clic en boton Aceptar");
                break;
            case 1:
                NSLog(@"Clic en boton Cancelar");
                break;
            case 2:
                NSLog(@"Clic en boton Omitir");
                break;
        }
    }else if (alertView.tag==2)
    {
        NSLog(@"El usuario ingresado fue : %@ con clave: %@", [alertView textFieldAtIndex:0].text, [alertView textFieldAtIndex:1].text);
    }
}
- (IBAction)alertaCampos:(id)sender {
    alerta = [[UIAlertView alloc] initWithTitle:@"Confirmar Usuario"
                                        message:@"Introduce tu usuario y contraseña"
                                       delegate:self
                              cancelButtonTitle:@"Cancelar"
                              otherButtonTitles:@"Pagar", nil];
    alerta.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    alerta.tag=2;
    [alerta show];
}

- (IBAction)hojaAcciones:(id)sender {
    UIActionSheet * menuOpciones = [[UIActionSheet alloc] initWithTitle:@"Menu" delegate:self cancelButtonTitle:@"Cerrar" destructiveButtonTitle:@"Borrar" otherButtonTitles:@"Enviar", @"Omitir", @"Compartir", nil];
    [menuOpciones showInView:self.view];
}
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Clic en Borrar");
            break;
        case 1:
            NSLog(@"Clic en Enviar");
            break;
        case 2:
            NSLog(@"Clic en Omitir");
            break;
        case 3:
            NSLog(@"Clic en Compartir");
            break;
        case 4:
            NSLog(@"Clic en Cerrar");
            break;
    }
}
@end
