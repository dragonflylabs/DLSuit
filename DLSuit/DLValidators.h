//
//  Validators.h
//  Gastalon
//
//  Created by Daniel García Alvarado on 5/3/15.
//  Copyright (c) 2015 Dragonfly Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DLValidators : NSObject

+(BOOL)validAlphanumeric:(NSString*)text;
+(BOOL)validName:(NSString*)text;
+(BOOL)validNumeric:(NSString*)text;
+(BOOL)validDecimal:(NSString*)text;
+(BOOL)validPassword:(NSString*)text;
+(BOOL)validEmail:(NSString*)text;
+(NSString*)numberCurrencyFormatter:(double)amount;
@end
