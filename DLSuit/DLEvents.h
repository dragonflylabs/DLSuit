//
//  DLEvents.h
//  Pods
//
//  Created by Daniel García Alvarado on 5/9/15.
//
//

#import <UIKit/UIKit.h>

@interface DLEvents : NSObject
@end


@interface DLEventImage : NSObject
@property(nonatomic, strong) UIImage * image;
@property(nonatomic, strong) NSError * error;
@end

@interface DLEventApi : NSObject
@property(nonatomic, strong) id response;
@property(nonatomic, strong) NSError * error;
@end
