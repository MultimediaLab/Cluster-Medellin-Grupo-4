//
//  ConvertidorViewController.h
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Converter.h"
#import "ConfigViewController.h"
@interface ConvertidorViewController : UIViewController <ConfigViewControllerDelegate>
{
    Converter * conversor;
    ConfigViewController * terceraVista;

}
@property (strong, nonatomic) IBOutlet UITextField *totalConvert;
- (IBAction)sliderPrice:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *lbResult;

@property NSString * dataTransfer;
@property (strong, nonatomic) IBOutlet UILabel *txtSaludo;
@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UILabel *valorMinimoTxt;
@property (strong, nonatomic) IBOutlet UILabel *valorMaximoTxt;
- (IBAction)exitButton:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *valorActualTxt;
@end
