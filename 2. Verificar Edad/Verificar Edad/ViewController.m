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
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)validateAge:(id)sender {
    user = [[Person alloc] init];
    [user setName:_userText.text];
    [user setAge:[_ageText.text intValue]];
    [user setCity:_cityText.text];
    
    if ([user userIsAdult]) {
        _result.text = [NSString stringWithFormat: @"%@ es adulto y su cuidad es %@", [user name], [user city]];
    }else{
        _result.text = [NSString stringWithFormat: @"%@ es niño y su cuidad es %@", [user name], [user city]];
    }
    
    //Ocultar el teclado
    [self.view endEditing:YES];
    
}
@end
