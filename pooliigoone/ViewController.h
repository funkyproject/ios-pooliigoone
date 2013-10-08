//
//  ViewController.h
//  pooliigoone
//
//  Created by admin on 07/10/13.
//  Copyright (c) 2013 Aurelien Fontaine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Polygone.h"
#import "UIPolygoneView.h"

@interface ViewController : UIViewController
- (IBAction)handleDelSide:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *displayNumberOfSide;
@property (weak, nonatomic) IBOutlet UILabel *displayNameOfPolygone;
@property (weak, nonatomic) IBOutlet UIButton *decreaseButton;
@property (weak, nonatomic) IBOutlet UIButton *increaseButton;
@property (weak, nonatomic) IBOutlet UILabel *error;
@property (weak, nonatomic) IBOutlet UIPolygoneView *polygoneView;

- (IBAction)handleAddSide:(id)sender;
@end

