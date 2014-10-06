//
//  ViewController.h
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "ConvertidorViewController.h"

@interface ViewController : UIViewController<UIAlertViewDelegate>{
    UIAlertView *alerta;
    ConvertidorViewController * segundaVista;
}
@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtPasswd;


@end

