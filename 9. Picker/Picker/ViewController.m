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
@end
