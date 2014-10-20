//
//  ViewController.m
//  JSON
//
//  Created by Profesor on 17/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

#define kQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _animacion.hidden = NO;
    [_animacion startAnimating];
    NSURL * url = [NSURL URLWithString:@"http://54.207.107.65/cluster/?id=1"];
    dispatch_async(kQueue, ^{
        [self performSelectorOnMainThread:@selector(printJSONData:) withObject:[NSData dataWithContentsOfURL:url] waitUntilDone:YES];
    });
}
-(void)printJSONData:(NSData*)responseData{
    [_animacion stopAnimating];
    _animacion.hidden=YES;
    NSError * error;
    NSDictionary * json = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
    
    
    NSArray * registros = [json objectForKey:@"registros"];
    NSDictionary * registro1 = [registros objectAtIndex:0];
    
    NSLog(@"%@", registro1);
    
    _nameTxt.text = [registro1 objectForKey:@"usuario"];
    _jobTxt.text = [registro1 objectForKey:@"prefesion"];
    _dateTxt.text = [registro1 objectForKey:@"fecha"];
    _passTxt.text = [registro1 objectForKey:@"contrasena"];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
