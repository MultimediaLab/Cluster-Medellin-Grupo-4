//
//  ConfigViewControllerDelegate.h
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ConfigViewControllerDelegate <NSObject>

-(void)setDataSliderWithMin:(NSString*)min andMax:(NSString*)max;

@end
