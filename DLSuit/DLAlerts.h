//
//  Alerts.h
//  Taxi
//
//  Created by Daniel García Alvarado on 5/4/15.
//  Copyright (c) 2015 Lennken. All rights reserved.
//

#import <Foundation/Foundation.h>

static
@interface DLAlerts : NSObject

+(void)showErrorMessage:(NSString*)message;
+(void)showWarningMessage:(NSString*)message;
+(void)showMessageMessage:(NSString*)message;
+(void)showSuccessMessage:(NSString*)message;

+(void)showErrorWithTitle:(NSString*)title andMessage:(NSString*)message;
+(void)showSuccessWithTitle:(NSString*)title andMessage:(NSString*)message;
+(void)showMessageWithTitle:(NSString*)title andMessage:(NSString*)message;
+(void)showWarningWithTitle:(NSString*)title andMessage:(NSString*)message;

@end
