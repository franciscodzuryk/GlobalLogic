//
//  Continent.m
//  GlobalLogic
//
//  Created by Francisco Dzuryk on 28/9/15.
//  Copyright © 2015 FranDz. All rights reserved.
//

#import "Continent.h"

@implementation Continent

+(instancetype)continentWithName:(NSString*)name {
    //Exe: notice the use of self, here refers to the class not to the object.
    Continent *continent = [[[self class] alloc] init];
    [continent setName:name];
    [continent setCountries:[self createCountriesForContinentName:name]];
    return continent;
}

-(NSInteger) countryCount {
    return [self countries] ? [[self countries] count] : 0;
}

+(NSArray*)createContinents {
    return @[[Continent continentWithName:@"Asia"],
             [Continent continentWithName:@"América"],
             [Continent continentWithName:@"África"],
             [Continent continentWithName:@"Antártida"],
             [Continent continentWithName:@"Europa"],
             [Continent continentWithName:@"Oceanía"]];
}

+(NSArray*)createCountriesForContinentName:(NSString*)continent {
    NSArray* result;
    if ([continent isEqualToString:@"Asia"]) {
        result = @[[Country countryWithName:@"China"],
                   [Country countryWithName:@"Corea del Norte"],
                   [Country countryWithName:@"Corea del Sur"],
                   [Country countryWithName:@"Japón"],
                   [Country countryWithName:@"Mongolia"],
                   [Country countryWithName:@"República de China"]];
    } else if ([continent isEqualToString:@"América"]) {
        result = @[[Country countryWithName:@"Argentina"],
                   [Country countryWithName:@"Brasil"],
                   [Country countryWithName:@"México"],
                   [Country countryWithName:@"Canadá"],
                   [Country countryWithName:@"Panamá"],
                   [Country countryWithName:@"Cuba"]];
    } else if ([continent isEqualToString:@"África"]) {
        result = @[[Country countryWithName:@"Angola"],
                   [Country countryWithName:@"Camerún"],
                   [Country countryWithName:@"República del Congo"],
                   [Country countryWithName:@"Costa de Marfil"],
                   [Country countryWithName:@"Egipto"],
                   [Country countryWithName:@"Libia"]];
    } else if ([continent isEqualToString:@"Europa"]) {
        result = @[[Country countryWithName:@"Alemania"],
                   [Country countryWithName:@"Austria"],
                   [Country countryWithName:@"Bélgica"],
                   [Country countryWithName:@"España"],
                   [Country countryWithName:@"Francia"],
                   [Country countryWithName:@"Italia"]];
    } else if ([continent isEqualToString:@"Oceanía"]) {
        result = @[[Country countryWithName:@"Australia"],
                   [Country countryWithName:@"Fiyi"],
                   [Country countryWithName:@"Nueva Zelanda"],
                   [Country countryWithName:@"Papúa Nueva Guinea"],
                   [Country countryWithName:@"Tuvalu"],
                   [Country countryWithName:@"Micronesia"]];
    }
    return result;
}

@end
