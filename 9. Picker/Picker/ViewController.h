//
//  ViewController.h
//  Picker
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource>
{
    NSArray * paisesArray;
    UIAlertView * alerta;
}

- (IBAction)selectDate:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *dateTxt;

- (IBAction)userSelectDate:(id)sender;

@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

//Agregue Outlet PickerView
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;


///ANIMACION
- (IBAction)contolViewPicker:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *containerPicker;

@end

