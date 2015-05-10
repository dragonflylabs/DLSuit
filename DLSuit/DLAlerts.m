//
//  Alerts.m
//  Taxi
//
//  Created by Daniel García Alvarado on 5/4/15.
//  Copyright (c) 2015 Lennken. All rights reserved.
//

#import "DLAlerts.h"
#import "TSMessageView.h"

@implementation DLAlerts

+(void)showErrorMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:message type:TSMessageNotificationTypeError];
}

+(void)showWarningMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:message type:TSMessageNotificationTypeWarning];
}

+(void)showMessageMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:message type:TSMessageNotificationTypeMessage];
}

+(void)showSuccessMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:message type:TSMessageNotificationTypeSuccess];
}

+(void)showErrorWithTitle:(NSString*)title andMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:title
                                subtitle:message
                                    type:TSMessageNotificationTypeError];
}

+(void)showMessageWithTitle:(NSString*)title andMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:title
                                subtitle:message
                                    type:TSMessageNotificationTypeMessage];
}

+(void)showSuccessWithTitle:(NSString*)title andMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:title
                                subtitle:message
                                    type:TSMessageNotificationTypeSuccess];
}

+(void)showWarningWithTitle:(NSString*)title andMessage:(NSString*)message{
    [TSMessage showNotificationWithTitle:title
                                subtitle:message
                                    type:TSMessageNotificationTypeWarning];
}
@end
