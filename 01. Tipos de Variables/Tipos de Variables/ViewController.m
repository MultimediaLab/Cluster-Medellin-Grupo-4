//
//  ViewController.m
//  Tipos de Variables
//
//  Created by Estudiante on 17/09/14.
//  Copyright (c) 2014 Giovanny Suarez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	/// Strings
    
    //NSString * saludo = @"Hola iOS";
    
    int  edad = 20;
    float  valor = 0.5;
    
    id var;
    
    //NSString * mensaje = [NSString stringWithFormat:@"Mi nombre es pepito y tengo %i años", edad];
    
    //NSLog(@"%@", mensaje);
    
    // Mutable Strings
    
    NSMutableString * mensaje2 = [NSMutableString stringWithFormat: @"Mi nombre es: "];
    
    [mensaje2 appendString:@"Giovanny Suarez"];
    
    //Arrays
    NSArray * meses = @[@"enero", @"febrero", @"marzo"];
    //NSArray * meses2 = [[NSArray alloc] initWithObjects:@"enero", @"febero", @"marzo", nil];
    
    NSString * mes = [meses objectAtIndex:1];
    NSLog(@"%@", mes);
    
    // Mutable Array
    NSMutableArray * mesesAno = [[NSMutableArray alloc] initWithArray:meses];
    
    [mesesAno addObject:@"abril"];
    [mesesAno removeObjectAtIndex:1];
    [mesesAno removeAllObjects];
    //[mesesAno removeLastObject];
    
    NSLog(@"%@", mesesAno);
    
    // Diccionarios
    NSDictionary * usuario = @{@"usuario": @"jose", @"edad": @"20", @"ciudad": @"medellin"};
    
    //NSDictionary * usuario2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"jose", @"usuario",@"20", @"edad", @"medellin", @"ciudad", nil];
    
    NSString * usuarioEdad = [usuario objectForKey:@"edad"];
    NSLog(@"%@", usuarioEdad);
    
    // Mutable Diccionary
    
    NSMutableDictionary * usuario3 = [[NSMutableDictionary alloc] initWithDictionary:usuario];
    [usuario3 setValue:@"25" forKey:@"edad"];
    [usuario3 removeObjectForKey:@"ciudad"];
    
    [usuario3 setValue:@"Poblado" forKey:@"Barrio"];
    
    NSLog(@"%@", usuario3);



}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
