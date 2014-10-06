//
//  ViewController.m
//  Segues y Alertas
//
//  Created by Profesor on 24/09/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    /*

    segundaPantalla = [segue destinationViewController];
    segundaPantalla.dataTransfer = _userLoginName.text;
     */
    
    segundaPantalla = [[segue.destinationViewController viewControllers] objectAtIndex:0];
    segundaPantalla.dataTransfer = _userLoginName.text;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    if ([_passwordLoginName.text isEqualToString:@"123"]) {
        return YES;
    }
    return NO;
}
@end
