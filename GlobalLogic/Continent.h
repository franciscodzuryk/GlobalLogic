//
//  Continent.h
//  GlobalLogic
//
//  Created by Francisco Dzuryk on 28/9/15.
//  Copyright © 2015 FranDz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Country.h"

@interface Continent : NSObject
@property (nonatomic, retain) NSString *name;
@property (nonatomic, retain) NSArray *countries;
@property (nonatomic, assign, readonly) NSInteger countryCount;

+(instancetype)continentWithName:(NSString*)name;
+(NSArray*)createCountriesForContinentName:(NSString*)continent;
+(NSArray*)createContinents;
@end
