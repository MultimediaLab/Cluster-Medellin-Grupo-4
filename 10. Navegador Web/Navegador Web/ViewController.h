//
//  ViewController.h
//  Navegador Web
//
//  Created by Profesor on 3/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *animacionActivity;
@property (strong, nonatomic) IBOutlet UIWebView *navegador;
- (IBAction)htmlButton:(id)sender;
- (IBAction)jsButton:(id)sender;
- (IBAction)urlButton:(id)sender;
- (IBAction)pdfButton:(id)sender;


@end

