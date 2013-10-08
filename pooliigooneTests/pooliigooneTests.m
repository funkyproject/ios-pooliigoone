//
//  pooliigooneTests.m
//  pooliigooneTests
//
//  Created by admin on 07/10/13.
//  Copyright (c) 2013 Aurelien Fontaine. All rights reserved.
//

#import "pooliigooneTests.h"
#import "Polygone.h"
@implementation pooliigooneTests

- (void)setUp
{
    [super setUp];

    
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testPolyWith3SideWhenAskNameThenShouldBeTriangle
{
    Polygone *poly = [Polygone polygoneWithNumberOfSide:3];
    
    STAssertEquals(@"Triangle", [poly name],@"Poly name");
}


- (void)testPolyWith2SideWhenAskNameThenShouldBeRaiseAnException
{
    STAssertThrows([Polygone polygoneWithNumberOfSide:2], @"Expection raise");
}

@end
