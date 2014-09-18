//
//  Person.m
//  Verificar Edad
//
//  Created by Estudiante on 17/09/14.
//  Copyright (c) 2014 Giovanny Suarez. All rights reserved.
//

#import "Person.h"

@implementation Person
-(NSString *)name{
    return name;
}
-(void)setName:(NSString *)value{
    name = value;
}
-(int)age{
    return age;
}
-(void)setAge:(int)value{
    age = value;
}
-(NSString *)city{
    return city;
}
-(void)setCity:(NSString *)value{
    city = value;
}
-(BOOL)userIsAdult{
    if (age >= 18) {
        return YES;
    }
    return NO;
}


@end
