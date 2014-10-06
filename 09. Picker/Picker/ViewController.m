//
//  ViewController.m
//  Picker
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
    _datePicker.hidden= YES;
    _dateTxt.delegate = self;
    _pickerView.delegate = self;
    _pickerView.dataSource = self;
    
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"Paises" ofType:@"plist"];
    
    paisesArray = [[NSArray alloc] initWithContentsOfFile:ruta];
   // NSLog(@"%@", paisesArray);
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [paisesArray count];
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [paisesArray objectAtIndex:row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    alerta = [[UIAlertView alloc] initWithTitle:@"Pais Seleccionado" message:[paisesArray objectAtIndex:row] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alerta show];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selectDate:(id)sender {
    _datePicker.hidden=NO;
}
- (IBAction)userSelectDate:(id)sender {
    UIDatePicker * control = sender;
    _dateTxt.text = [NSString stringWithFormat:@"%@", control.date];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    for (UIView * view in self.view.subviews) {
        [view resignFirstResponder];
    }
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [textField resignFirstResponder];
}
- (IBAction)contolViewPicker:(id)sender {
    UISwitch * control = sender;
    if (control.on) {
        [UIView animateWithDuration:1.0 animations:^{
            _containerPicker.frame = CGRectMake(_containerPicker.frame.origin.x, _containerPicker.frame.origin.y, _containerPicker.frame.size.width, 221);
            _containerPicker.alpha = 1.0;
        }];
    }else{
        [UIView animateWithDuration:1.0 animations:^{
            _containerPicker.frame = CGRectMake(_containerPicker.frame.origin.x, _containerPicker.frame.origin.y, _containerPicker.frame.size.width, 0);
            _containerPicker.alpha = 0.0;
        }];
    }
}
@end
