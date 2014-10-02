//
//  ConfigViewController.m
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ConfigViewController.h"

@interface ConfigViewController ()

@end

@implementation ConfigViewController

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

- (IBAction)saveDataSlider:(id)sender {
    if ([_minTxt.text floatValue]>=[_maxTxt.text floatValue]) {
        UIAlertView * error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Valores Incorrectos" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
        [error show];
    }else{
    [_delegate setDataSliderWithMin:_minTxt.text andMax:_maxTxt.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
@end
