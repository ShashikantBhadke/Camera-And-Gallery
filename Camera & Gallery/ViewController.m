//
//  ViewController.m
//  Camera & Gallery
//
//  Created by Student-002 on 18/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
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

- (IBAction)cameraclick:(id)sender {
    
    UIImagePickerController *picker=[[UIImagePickerController alloc]init];
    picker.sourceType=UIImagePickerControllerSourceTypeCamera;
    picker.delegate=self;
    [self presentViewController:picker animated:YES completion:^{
        NSLog(@"Present");
    }];
}

- (IBAction)photogallery:(id)sender {
    
    UIImagePickerController *picker=[[UIImagePickerController alloc]init];
    picker.sourceType=UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    picker.delegate=self;
    [self presentViewController:picker animated:YES completion:^{
        NSLog(@"Present");
    }];
}


-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
[self dismissViewControllerAnimated:YES completion:^{
    NSLog(@"Dissmiss");
}];
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{

    _imgview.image=[info objectForKey:@"UIImagePickerControllerOriginalImage"];
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"Dissmiss");
        }];
    
}
@end
