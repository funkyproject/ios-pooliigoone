//
//  ViewController.m
//  pooliigoone
//
//  Created by admin on 07/10/13.
//  Copyright (c) 2013 Aurelien Fontaine. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    typedef void(^DiDChangeNumberOfSideBlock) (Polygone *poly);
    @property (strong, nonatomic, readwrite) Polygone *polygone;
@end

@implementation ViewController

- (void) viewDidLoad {
    [self.error setHidden:true];
    [self refresh];
}

- (IBAction)handleDelSide:(id)sender {
    [self changeNumberOfSide:^(Polygone *poly) { [poly decrease]; }];
}

- (IBAction)handleAddSide:(id)sender {
    [self changeNumberOfSide:^(Polygone *poly) { [poly increase]; }];
}

-(Polygone *)polygone {
    if(_polygone == nil) {
        _polygone = [[Polygone alloc] init];
    }
    
    return _polygone;
}

/* private */

- (void) refresh {
    
    self.increaseButton.hidden =  self.polygone.numberOfSide == K_POLYGONE_MAX_SIDE ;
    self.decreaseButton.hidden =  self.polygone.numberOfSide == K_POLYGONE_MIN_SIDE ;
    
    NSString* numberOfSideText = [[NSString alloc] initWithFormat:@"%d",  self.polygone.numberOfSide];
    
    self.displayNameOfPolygone.text = [self.polygone name];
    self.displayNumberOfSide.text = numberOfSideText;
    
    self.polygoneView.edges = self.polygone.numberOfSide;
}

- (void) changeNumberOfSide:(DiDChangeNumberOfSideBlock)block  {
    @try {
        block(self.polygone);
        [self.error setHidden:true];
        [self refresh];
    } @catch (NSException* e) {
        [self.error setText:[e description]];
        [self.error setHidden:false];
    }
}

@end
