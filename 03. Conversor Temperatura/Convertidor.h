//
//  Convertidor.h
//  Conversor Temperatura
//
//  Created by Profesor on 19/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Convertidor : NSObject
{
    float celsius;
    float farenheit;
    float kelvin;
}

//Primer Convertidor C a F
-(NSString*)convertCtoF:(float)value;

//Segundo Convertidor C a K
-(NSString*)convertCtoK:(float)value;

//Tercer Convertidor K a F
-(NSString*)convertKtoF:(float)value;

@end
