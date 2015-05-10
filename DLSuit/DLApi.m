//
//  Api.m
//  Woolworth
//
//  Created by Mobile Developer on 10/9/14.
//  Copyright (c) 2014 Lennken. All rights reserved.
//

#import "DLApi.h"
#import <AFNetworking/AFNetworking.h>
#import "DLEvents.h"

static AFHTTPRequestOperationManager * manager;
static DLApi * api;


@implementation DLApi

+(DLApi*)sharedApi{
    if(!api){
        api = [[DLApi alloc] init];
        manager = [AFHTTPRequestOperationManager manager];
        manager.requestSerializer = [AFJSONRequestSerializer serializer];
        manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
        manager.responseSerializer.acceptableContentTypes = [manager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/plain"];
        [manager.reachabilityManager startMonitoring];
        manager.securityPolicy.allowInvalidCertificates = YES;
    }
    return api;
}

-(DLApi*)withHeaders:(NSDictionary*)headers{
    for(id key in headers) {
        id value = [headers objectForKey:key];
        [manager.requestSerializer setValue:value forHTTPHeaderField:key];
    }
    return api;
}

-(void)getWithURLString:(NSString*)url{
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self callWithResponse:responseObject andError:nil];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        [self callWithResponse:nil andError:error];
    }];
}

-(void)postObjectWithURLString:(NSString*)url andObject:(id)object{
    [manager POST:url parameters:object success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self callWithResponse:responseObject andError:nil];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        [self callWithResponse:nil andError:error];
    }];
}

-(void)postWithURLString:(NSString*)url andParams:(NSDictionary*)params{
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        [self callWithResponse:responseObject andError:nil];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        [self callWithResponse:nil andError:error];
    }];
}

-(void)callWithResponse:(id)responseObject andError:(NSError*)error{
    DLEventApi * event = [DLEventApi new];
    event.response = responseObject;
    event.error = error;
    PUBLISH(event);
}

-(BOOL)isReachable{
    return manager.reachabilityManager.reachable;
}
@end
