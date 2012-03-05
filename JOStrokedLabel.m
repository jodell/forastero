//
//  JOStrokedLabel.m
//

#import "JOStrokedLabel.h"


@implementation JOStrokedLabel

@synthesize strokeColor = _strokeColor, strokeWidth = _strokeWidth;

- (id)initWithFrame:(CGRect)frame
        strokeColor:(UIColor *)color
        strokeWidth:(float)width {
  if (self = [super initWithFrame:frame]) {
    _strokeColor = color;
    [_strokeColor retain];
    _strokeWidth = width;
  }
  return self;
}

- (void)drawRect:(CGRect)rect {
  [super drawRect:rect];
  // Draw a stroke line at the bottom of the the view.
  CGContextRef context = UIGraphicsGetCurrentContext();
  CGContextSetStrokeColorWithColor(context, _strokeColor.CGColor);
  CGContextSetLineWidth(context, _strokeWidth);
  CGContextMoveToPoint(context, 0, CGRectGetMaxY(rect));
  CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
  CGContextStrokePath(context);
}

- (void)dealloc {
  [_strokeColor release];
  [super dealloc];
}

@end
