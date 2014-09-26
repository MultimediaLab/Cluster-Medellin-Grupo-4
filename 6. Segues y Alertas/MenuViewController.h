//
//  MenuViewController.h
//  Segues y Alertas
//
//  Created by Profesor on 24/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

- (IBAction)exitButton:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *userName;
@property NSString * dataTransfer;

@end
