//
//  CustomUIView.m
//  DrawingUIView
//
//  Created by Yin Kokpheng on 11/19/15.
//  Copyright © 2015 Yin Kokpheng. All rights reserved.
//

#import "CustomUIView.h"

@implementation CustomUIView
NSUInteger currentIndex;
-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

-(void)awakeFromNib {
    [self setUp];
}

-(void)setUp{
    self.backgroundColor = [UIColor whiteColor];
    self.opaque = YES;
    UIGestureRecognizer *gs =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapFrom:)];
    [self addGestureRecognizer:gs];
    
}

-(void)handleTapFrom:(UITapGestureRecognizer *)recognizer{
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect{
    CGContextRef ctr = UIGraphicsGetCurrentContext();
    
    NSArray *arr = @[@"Rectangle", @"Circle", @"Triangle", @"Pentagon"];
    
    NSUInteger randomIndex = arc4random() % [arr count];
    
    while (currentIndex == randomIndex) {
        randomIndex = arc4random() % [arr count];
    }
    currentIndex = randomIndex;
    NSLog(@"%d", randomIndex);
    switch (randomIndex) {
        case 0:
            [self drawRectangle:ctr];
            break;
        case 1:
            [self drawCircle:ctr];
            break;
        case 2:
            [self drawTriangle:ctr];
            break;
        case 3:
            [self drawPentagon:ctr];
            break;
        default:
            NSLog(@"Default");
            break;
    }
}

//draw circle
- (void)drawCircle:(CGContextRef)context {
    UIGraphicsPushContext(context);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
    [path addClip];
    [path fill];
    UIGraphicsPopContext();
}

//draw triangle
- (void)drawTriangle:(CGContextRef)context {
    UIGraphicsPushContext(context);
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(45, 0)];
    [path addLineToPoint:CGPointMake(90, 90)];
    [path addLineToPoint:CGPointMake(0, 90)];
    [path closePath];
    [path fill];
}


//draw Rectangle
- (void)drawRectangle:(CGContextRef)context {
    UIGraphicsPushContext(context);
    
    NSLog(@"%d",self.bounds);
    //CGContextAddRect(context, self.bounds);
    CGContextAddRect(context, self.bounds);
    CGContextFillPath(context);
    UIGraphicsPopContext();
}


//draw pentagon
-(void)drawPentagon:(CGContextRef)context {
    
    UIGraphicsPushContext(context);
    UIBezierPath *path = [UIBezierPath bezierPath];
    // Set the starting point of the shape.
    [path moveToPoint:CGPointMake(45.0, 0.0)];
    // Draw the lines.
    [path addLineToPoint:CGPointMake(90.0, 20.0)];
    [path addLineToPoint:CGPointMake(80, 70)];
    [path addLineToPoint:CGPointMake(20.0, 70)];
    [path addLineToPoint:CGPointMake(0.0, 20.0)];
    [path closePath];
    [UIColor colorWithRed:0.1 green:1 blue:1 alpha:1];
    [path fill];
}
@end
