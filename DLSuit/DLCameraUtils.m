//
//  CameraUtils.m
//  Gastalon
//
//  Created by Daniel García Alvarado on 5/3/15.
//  Copyright (c) 2015 Dragonfly Labs. All rights reserved.
//

#import "DLCameraUtils.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import "Tolo.h"
#import "DLEvents.h"

@interface DLCameraUtils ()
@property(nonatomic, strong) UIImage * image;
@property(nonatomic, strong) UIViewController * viewController;
@property BOOL newMedia;
@end

@implementation DLCameraUtils{
    UIActionSheet * sheet;
}

-(id)init{
    self = [super init];
    if(self){
        _title = @"Pick image from";
        _titleCancelButton = @"Cancel";
        _titleCameraButton = @"Camera";
        _titleGalleryButton = @"Gallery";
    }
    return self;
}

-(void)showInViewController:(UIViewController*)viewController{
    self.viewController = viewController;
    sheet = [[UIActionSheet alloc] initWithTitle:_titleCameraButton delegate:self cancelButtonTitle:_titleCancelButton destructiveButtonTitle:nil otherButtonTitles:_titleCameraButton, _titleGalleryButton, nil];
    [sheet showInView:self.viewController.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex != [actionSheet cancelButtonIndex]){
        if([[actionSheet buttonTitleAtIndex:buttonIndex] isEqualToString:_titleCameraButton]){
            if ([UIImagePickerController isSourceTypeAvailable:
                 UIImagePickerControllerSourceTypeCamera])
            {
                UIImagePickerController *imagePicker =
                [[UIImagePickerController alloc] init];
                imagePicker.delegate = self;
                imagePicker.sourceType =
                UIImagePickerControllerSourceTypeCamera;
                imagePicker.mediaTypes = @[(NSString *) kUTTypeImage];
                imagePicker.allowsEditing = NO;
                [self.viewController presentViewController:imagePicker
                                   animated:YES completion:nil];
                _newMedia = YES;
            }
        }else{
            if ([UIImagePickerController isSourceTypeAvailable:
                 UIImagePickerControllerSourceTypeSavedPhotosAlbum])
            {
                UIImagePickerController *imagePicker =
                [[UIImagePickerController alloc] init];
                imagePicker.delegate = self;
                imagePicker.sourceType =
                UIImagePickerControllerSourceTypePhotoLibrary;
                imagePicker.mediaTypes = @[(NSString *) kUTTypeImage];
                imagePicker.allowsEditing = NO;
                [self.viewController presentViewController:imagePicker
                                   animated:YES completion:nil];
                _newMedia = NO;
            }
        }
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    [picker dismissViewControllerAnimated:YES completion:nil];
    if ([mediaType isEqualToString:(NSString *)kUTTypeImage]) {
        UIImage *image = info[UIImagePickerControllerOriginalImage];
        DLEventImage * event = [DLEventImage new];
        event.image = image;
        PUBLISH(event);
        if (_newMedia)
            UIImageWriteToSavedPhotosAlbum(image,self, @selector(image:finishedSavingWithError:contextInfo:),
                                           nil);
    }
}

-(void)image:(UIImage *)image finishedSavingWithError:(NSError *)error contextInfo:(void *)contextInfo{
    if (error) {
        DLEventImage * event = [DLEventImage new];
        event.error = error;
        PUBLISH(event);
    }
}
@end
