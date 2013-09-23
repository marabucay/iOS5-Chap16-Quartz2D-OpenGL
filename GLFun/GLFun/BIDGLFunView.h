//
//  BIDGLFunView.h
//  GLFun
//
//  Created by Maria Alice C. Lim on 9/23/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "BIDConstants.h"
#import "OpenGLES2DView.h"

@class Texture2D;
@interface BIDGLFunView : OpenGLES2DView
@property CGPoint firstTouch;
@property CGPoint lastTouch;
@property (nonatomic, strong) UIColor *currentColor;
@property BOOL useRandomColor;
@property ShapeType shapeType;
@property (nonatomic, strong) Texture2D *sprite;

@end
