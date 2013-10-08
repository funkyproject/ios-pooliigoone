
//
//  Polygone.m
//  pooliigoone
//
//  Created by admin on 07/10/13.
//  Copyright (c) 2013 Aurelien Fontaine. All rights reserved.
//

#import "Polygone.h"

@interface Polygone ()
    @property int perimeter;
@end

@implementation Polygone


+(id)polygoneWithNumberOfSide:(int)numberOfSide {
    Polygone *poly = [[self alloc] init];
    [poly setNumberOfSide:numberOfSide];
    
    return poly;
}

-(id) init {
        
    self = [super init];
    if(self) {
        self.numberOfSide = 3;
    }

    return self;
}

-(void) setNumberOfSide:(int)numberOfSide {
    
    if ([self isInvalidPolygone:numberOfSide]) {
        [NSException raise:@"Invalid number of side" format:@"%d n'est pas un nombre de coté valide pour notre polygone", _numberOfSide];
    }
    
    _numberOfSide = numberOfSide;
}

-(void) increase {
    self.numberOfSide++;
}
-(void) decrease {
    self.numberOfSide--;
}

-(NSString *)name {
    
    NSArray *names = @[@"triangle",
     @"quadrilatère",
     @"pentagone",
     @"hexagone",
     @"heptagone",
     @"octogone",
     @"ennéagone",
     @"décagone",
     @"hendécagone",
    @"dodécagone"];

    
    return names[self.numberOfSide - 3];
}


- (int)isInvalidPolygone:(int)numberOfSide {
    return numberOfSide < K_POLYGONE_MIN_SIDE || numberOfSide > K_POLYGONE_MAX_SIDE;
}



@end
