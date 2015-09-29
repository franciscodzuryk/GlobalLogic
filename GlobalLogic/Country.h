//
//  Country.h
//  GlobalLogic
//
//  Created by Francisco Dzuryk on 28/9/15.
//  Copyright © 2015 FranDz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Country : NSObject
@property (nonatomic, retain) NSString *name;
+(instancetype)countryWithName:(NSString*)name;
@end
