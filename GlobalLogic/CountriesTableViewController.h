//
//  CountriesTableViewController.h
//  GlobalLogic
//
//  Created by Francisco Dzuryk on 28/9/15.
//  Copyright © 2015 FranDz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Continent.h"

@interface CountriesTableViewController : UITableViewController

@end

@interface CountryCell : UITableViewCell
//Exe: be careful with this, is weak because I know this country will exist in the list
@property (nonatomic, weak) Country * country;
@end