//
//  Country.m
//  GlobalLogic
//
//  Created by Francisco Dzuryk on 28/9/15.
//  Copyright © 2015 FranDz. All rights reserved.
//

#import "Country.h"

@implementation Country
+(instancetype)countryWithName:(NSString*)name {
    Country *country = [[[self class] alloc] init];
    [country setName:name];
    return country;
}
@end
