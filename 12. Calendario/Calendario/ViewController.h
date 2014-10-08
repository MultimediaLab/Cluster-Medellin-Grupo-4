//
//  ViewController.h
//  Calendario
//
//  Created by Profesor on 6/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface ViewController : UIViewController <UIPageViewControllerDelegate>

@property UIPageViewController * page;
@property Model * modelo;

@end

