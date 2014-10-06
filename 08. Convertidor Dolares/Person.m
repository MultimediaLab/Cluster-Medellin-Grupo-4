//
//  Person.m
//  Convertidor Dolares
//
//  Created by Profesor on 1/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "Person.h"

@implementation Person

-(BOOL)isUserAutentified{
    if ([_userName isEqualToString:@"admin"] && [_password isEqualToString:@"123"] )
    {
        return YES;
    }
    return NO;

}

@end
