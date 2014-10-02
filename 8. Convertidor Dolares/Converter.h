//
//  Converter.h
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Converter : NSObject
{
    float pesos;
}

-(NSString*)convertDollarsToPesos:(float)dolar andValue:(float)tasa;



@end
