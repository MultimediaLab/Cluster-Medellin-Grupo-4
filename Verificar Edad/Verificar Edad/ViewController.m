//
//  ViewController.m
//  Verificar Edad
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
	user = [[Person alloc] init];
    [user setName:@"Pepito"];
    [user setAge:15];
    
    if ([user userIsAdult]) {
        NSLog(@"%@ es adulto", [user name]);
    }else{
        NSLog(@"%@ es niño", [user name]);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
