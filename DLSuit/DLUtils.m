//
//  Utils.m
//  Taxi
//
//  Created by Daniel García Alvarado on 5/8/15.
//  Copyright (c) 2015 Lennken. All rights reserved.
//

#import "DLUtils.h"
#import "Reachability.h"

@implementation DLUtils

+(BOOL)isConnected{
    Reachability *networkReachability = [Reachability reachabilityForInternetConnection];
    NetworkStatus networkStatus = [networkReachability currentReachabilityStatus];
    if (networkStatus == NotReachable) {
        return NO;
    } else {
        return YES;
    }
}
@end
