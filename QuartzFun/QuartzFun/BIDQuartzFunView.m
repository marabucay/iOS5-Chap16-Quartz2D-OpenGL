//
//  BIDQuartzFunView.m
//  QuartzFun
//
//  Created by Maria Alice C. Lim on 9/20/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDQuartzFunView.h"
#import "UIColor+BIDRandom.h"

@implementation BIDQuartzFunView
@synthesize colorControl;
@synthesize firstTouch, lastTouch, currentColor, drawImage, useRandomColor, shapeType;

- (id)initWithCoder:(NSCoder*)coder {
    if (self = [super initWithCoder:coder]) {
        currentColor = [UIColor redColor];
        useRandomColor = NO;
        self.drawImage = [UIImage imageNamed:@"iphone.png"] ;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

#pragma mark - Touch Handling
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (useRandomColor) {
        self.currentColor = [UIColor randomColor];
    }
    UITouch *touch = [touches anyObject];
    firstTouch = [touch locationInView:self];
    lastTouch = [touch locationInView:self];
    [self setNeedsDisplay];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    lastTouch = [touch locationInView:self];
    [self setNeedsDisplay];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    lastTouch = [touch locationInView:self];
    [self setNeedsDisplay];
}

- (IBAction)changeColor:(id)sender {
}

- (IBAction)changeShape:(id)sender {
}
@end
