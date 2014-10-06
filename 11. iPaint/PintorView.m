//
//  PintorView.m
//  iPaint
//
//  Created by Profesor on 3/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "PintorView.h"
#import "UIColor+Random.h"

@implementation PintorView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef contexto = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(contexto, 1.0f);
    
    switch (_colorType) {
        case kRedType:
            _currentColor = [UIColor redColor];
            _useRandom = NO;
            break;
        case kGreenType:
            _currentColor = [UIColor greenColor];
            _useRandom = NO;
            break;
        case kBlueType:
            _currentColor = [UIColor blueColor];
            _useRandom = NO;
            break;
        case kYellowType:
            _currentColor = [UIColor yellowColor];
            _useRandom = NO;
            break;
        case kRandomType:
            _useRandom = YES;
            break;
    }
    
    CGContextSetFillColorWithColor(contexto, _currentColor.CGColor);
    CGContextSetStrokeColorWithColor(contexto, _currentColor.CGColor);
    
    switch (_shapeType) {
        case kLineShape:
            CGContextMoveToPoint(contexto, _firstTouch.x, _firstTouch.y);
            CGContextAddLineToPoint(contexto, _lastTouch.x, _lastTouch.y);
            CGContextStrokePath(contexto);
            break;
            
        case kEllipseShape:
            CGContextAddEllipseInRect(contexto, self.currentRect);
            //CGContextStrokePath(contexto);
            CGContextDrawPath(contexto, kCGPathFillStroke);
            break;
            
        case kRectShape:
            CGContextAddRect(contexto, self.currentRect);
            CGContextDrawPath(contexto, kCGPathFillStroke);
            break;
            
        case kImageShape:
        {
            CGFloat horizontal = _image.size.width/2;
            CGFloat vertical = _image.size.height/2;
            CGPoint puntoDibujo = CGPointMake(_lastTouch.x-horizontal, _lastTouch.y-vertical);
            
            [_image drawAtPoint:puntoDibujo];
        }
            break;
    }
}
-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _image = [UIImage imageNamed:@"apple.png"];
    }
    return self;
}


-(CGRect)currentRect{
    return CGRectMake(_firstTouch.x, _firstTouch.y, _lastTouch.x-_firstTouch.x, _lastTouch.y-_firstTouch.y);
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (_useRandom) {
        _currentColor = [UIColor randomColor];
    }
    
    UITouch * touch = [touches anyObject];
    _firstTouch = [touch locationInView:self];
    
    _lastTouch = [touch locationInView:self];
    NSLog(@"First x : %f- y:%f", _firstTouch.x, _firstTouch.y);
    [self setNeedsDisplay];
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    _lastTouch = [touch locationInView:self];
    _redrawRect = CGRectUnion(_redrawRect, self.currentRect);
    NSLog(@"Last x : %f- y:%f", _lastTouch.x, _lastTouch.y);
    [self setNeedsDisplayInRect:_redrawRect];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    _lastTouch = [touch locationInView:self];
    _redrawRect = CGRectUnion(_redrawRect, self.currentRect);
    NSLog(@"Last x : %f- y:%f", _lastTouch.x, _lastTouch.y);
    [self setNeedsDisplayInRect:_redrawRect];
}
@end
