//
//  UIPolygoneView.m
//  pooliigoone
//
//  Created by admin on 08/10/13.
//  Copyright (c) 2013 Aurelien Fontaine. All rights reserved.
//

#import "UIPolygoneView.h"

@implementation UIPolygoneView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
         }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    CGContextMoveToPoint(ctx, [self x:0], [self y:0]);

    for ( int i=1; i < self.edges ; i++) {
        CGContextAddLineToPoint(ctx, [self x:i], [self y:i]);
    }
    
    CGContextClosePath(ctx);
    
    UIColor * color = [UIColor brownColor];
    CGContextSetFillColorWithColor(ctx, color.CGColor);
    CGContextSetStrokeColorWithColor(ctx, color.CGColor);
    
    CGContextDrawPath(ctx, kCGPathFillStroke);
}


-(void) setEdges:(int)edges
{
    _edges = edges;
    [self setNeedsDisplay];
}

- (float) aplha:(int) point {
    return ( 2 * M_PI/ self.edges ) * point ;
}

- (float) rayon {
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    
    return MIN(w, h)/2;
}

- (float) Mx {
    return self.bounds.size.width / 2;
}

- (float) My {
    return self.bounds.size.height / 2;
}

- (CGFloat) x:(int) point {
    return [self Mx] + ( cosf([self aplha: point]) * [self rayon]);
}

- (CGFloat) y:(int) point {
    return [self My] + ( sinf([self aplha: point]) * [self rayon]);
}

@end
