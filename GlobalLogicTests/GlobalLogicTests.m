//
//  GlobalLogicTests.m
//  GlobalLogicTests
//
//  Created by Francisco Dzuryk on 28/9/15.
//  Copyright © 2015 FranDz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Continent.h"

@interface GlobalLogicTests : XCTestCase

@end

@implementation GlobalLogicTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNewContinentAsia {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    Continent *asia = [Continent continentWithName:@"Asia"];
    XCTAssertEqualObjects([asia name], @"Asia");
    XCTAssertEqual([[asia countries] count], 6);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
