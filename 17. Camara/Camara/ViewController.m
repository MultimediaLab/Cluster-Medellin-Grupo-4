//
//  ViewController.m
//  Camara
//
//  Created by Profesor on 17/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (![UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera]) {
        UIAlertView * error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"El usuario no tiene camara disponible" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [error show];
        _takePhoto.enabled = NO;
        
    }
}
- (IBAction)takePhotoButton:(id)sender {
    UIImagePickerController * camara = [[UIImagePickerController alloc] init];
    camara.delegate = self;
    camara.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [camara setCameraDevice:UIImagePickerControllerCameraDeviceRear];
    
    [self presentViewController:camara animated:YES completion:nil];
}
- (IBAction)takePhotoAlbum:(id)sender {
    UIImagePickerController * galeria = [[UIImagePickerController alloc] init];
    galeria.delegate = self;
    galeria.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:galeria animated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    UIImage * imagenCapturada = info[UIImagePickerControllerOriginalImage];
    _imageView.image = imagenCapturada;
    if (picker.sourceType == UIImagePickerControllerSourceTypeCamera) {
        UIImageWriteToSavedPhotosAlbum(imagenCapturada, nil, nil, nil);
    }
    [picker dismissViewControllerAnimated:YES completion:nil];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
