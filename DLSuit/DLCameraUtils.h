//
//  CameraUtils.h
//  Gastalon
//
//  Created by Daniel García Alvarado on 5/3/15.
//  Copyright (c) 2015 Dragonfly Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLCameraUtils : NSObject<UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIActionSheetDelegate>
-(id)init;
-(void)showInViewController:(UIViewController*)viewController;
@property(nonatomic, strong) NSString * title;
@property(nonatomic, strong) NSString * titleCancelButton;
@property(nonatomic, strong) NSString * titleCameraButton;
@property(nonatomic, strong) NSString * titleGalleryButton;
@end

