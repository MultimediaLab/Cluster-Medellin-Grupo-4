//
//  ViewController.m
//  Navegador Web
//
//  Created by Profesor on 3/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _navegador.delegate = self;
    _animacionActivity.hidden=YES;
}

- (IBAction)htmlButton:(id)sender {
    NSString * htmlString = @"<h1>HOLA DESDE HTML</h1><p style='color:red;'>Esto es un parrafo</p>";
    [_navegador loadHTMLString:htmlString baseURL:nil];
}

- (IBAction)jsButton:(id)sender {
    NSString * jsString = @"alert('Hola desde JS');";
    [_navegador stringByEvaluatingJavaScriptFromString:jsString];
}

- (IBAction)urlButton:(id)sender {
    NSURL * url = [NSURL URLWithString:@"http://eltiempo.com"];
    NSURLRequest * request = [[NSURLRequest alloc] initWithURL:url];
    [_navegador setScalesPageToFit:NO];
    [_navegador loadRequest:request];
}

- (IBAction)pdfButton:(id)sender {
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"formulario" ofType:@"pdf"];
    NSData * dataPdf = [[NSData alloc] initWithContentsOfFile:ruta];
    [_navegador setScalesPageToFit:YES];
    [_navegador loadData:dataPdf MIMEType:@"application/pdf" textEncodingName:nil baseURL:nil];
    
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    _animacionActivity.hidden= NO;
    [_animacionActivity startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    _animacionActivity.hidden=YES;
    [_animacionActivity stopAnimating];

}
@end
