//
//  ViewController.h
//  Segues y Alertas
//
//  Created by Profesor on 24/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuViewController.h"

@interface ViewController : UIViewController{
    MenuViewController * segundaPantalla;

}

@property (strong, nonatomic) IBOutlet UITextField *userLoginName;
@property (strong, nonatomic) IBOutlet UITextField *passwordLoginName;

@end

