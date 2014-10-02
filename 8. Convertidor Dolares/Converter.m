//
//  Converter.m
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "Converter.h"

@implementation Converter

-(NSString*)convertDollarsToPesos:(float)dolar andValue:(float)tasa
{
    pesos = dolar * tasa;
    
    return [NSString stringWithFormat:@"%.02f",pesos];
}

@end
