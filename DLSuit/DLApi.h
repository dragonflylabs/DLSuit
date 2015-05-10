//
//  Api.h
//  Developed by Daniel García Alvarado
//
//  Copyright (c) 2014 Dragonfly Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tolo.h"

@interface DLApi : NSObject

+(DLApi*)sharedApi;
-(DLApi*)withHeaders:(NSDictionary*)headers;

#pragma mark GETS
/*
 * GET requests with Object callback
 */
-(void)getWithURLString:(NSString*)url;

#pragma mark POSTS
/*
 * POST object requests with Object callback
 */
-(void)postObjectWithURLString:(NSString*)url andObject:(id)object;

/*
 * POST form-url-enconded requests with Object callback
 */
-(void)postWithURLString:(NSString*)url andParams:(NSDictionary*)params;

@end
