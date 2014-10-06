//
//  ConfigViewController.h
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfigViewControllerDelegate.h"

@interface ConfigViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *minTxt;
@property (strong, nonatomic) IBOutlet UITextField *maxTxt;

- (IBAction)saveDataSlider:(id)sender;

@property id <ConfigViewControllerDelegate> delegate;
@end
