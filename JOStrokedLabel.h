//
//  JOStrokedLabel.h
//
//  A simple UILabel subclass that supports a lower edge stroke line by
//  @strokeColor and @strokeWidth.
//

#import <UIKit/UIKit.h>


@interface JOStrokedLabel : UILabel {
  float _strokeWidth;
  UIColor *_strokeColor;
}

@property (nonatomic, retain) UIColor *strokeColor;
@property (nonatomic, assign) float strokeWidth;

- (id)initWithFrame:(CGRect)frame
        strokeColor:(UIColor *)color
        strokeWidth:(float)width;

@end
