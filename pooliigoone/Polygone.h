//
//  Polygone.h
//  pooliigoone
//
//  Created by admin on 07/10/13.
//  Copyright (c) 2013 Aurelien Fontaine. All rights reserved.
//

#import <Foundation/Foundation.h>

#define K_POLYGONE_MIN_SIDE 3
#define K_POLYGONE_MAX_SIDE 12

@interface Polygone : NSObject

+(id)polygoneWithNumberOfSide:(int)numberOfSide;

@property (readonly, nonatomic) int numberOfSide;

-(NSString *)name;
-(void) increase;
-(void) decrease;

@end
