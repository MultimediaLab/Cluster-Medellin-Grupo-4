//
//  Model.h
//  Calendario
//
//  Created by Profesor on 6/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class CalendarViewController;

@interface Model : NSObject <UIPageViewControllerDataSource>

//Metodo que retorne el viewcontroller dependiendo del mes
-(CalendarViewController*) viewControllerAtIndex:(NSInteger)index storyboard:(UIStoryboard*)storyboard;

//Metodo que retone el mes dependiendo del viewcontroller
-(NSUInteger) indexOfViewController:(CalendarViewController*)viewController;

@end
