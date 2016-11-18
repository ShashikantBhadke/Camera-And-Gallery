//
//  ViewController.h
//  Camera & Gallery
//
//  Created by Student-002 on 18/11/16.
//  Copyright © 2016 Felix-its. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imgview;

- (IBAction)cameraclick:(id)sender;
- (IBAction)photogallery:(id)sender;
@end

