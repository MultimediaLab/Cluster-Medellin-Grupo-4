//
//  ConvertidorViewController.m
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ConvertidorViewController.h"

@interface ConvertidorViewController ()

@end

@implementation ConvertidorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _txtSaludo.text = _dataTransfer;
    conversor=[[Converter alloc] init];
    
    
    
    _valorMinimoTxt.text = [NSString stringWithFormat:@"%.f", _slider.minimumValue];
    _valorActualTxt.text = [NSString stringWithFormat:@"%.f", _slider.value];
    _valorMaximoTxt.text = [NSString stringWithFormat:@"%.f", _slider.maximumValue];
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

- (IBAction)sliderPrice:(id)sender {
    _valorActualTxt.text = [NSString stringWithFormat:@"%.f", ((UISlider *)sender).value];
    
    _lbResult.text=[conversor convertDollarsToPesos:[_totalConvert.text floatValue] andValue:((UISlider *)sender).value];
    
}
- (IBAction)exitButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setDataSliderWithMin:(NSString *)min andMax:(NSString *)max{
    _slider.minimumValue = [min floatValue];
    _slider.maximumValue = [max floatValue];
    
    _slider.value = ([max floatValue]+[min floatValue])/2;
    
    _valorMinimoTxt.text = min;
    _valorMaximoTxt.text = max;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    terceraVista = [segue destinationViewController];
    
    terceraVista.delegate = self;

}
@end
