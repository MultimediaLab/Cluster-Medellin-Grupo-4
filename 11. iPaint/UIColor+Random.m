//
//  UIColor+Random.m
//  iPaint
//
//  Created by Profesor on 3/10/14.
//  Copyright (c) 2014 Profesor. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)

+(UIColor *)randomColor{
    CGFloat red = (arc4random() % 256) / 256.0f;
    CGFloat green = (arc4random() % 256) / 256.0f;
    CGFloat blue = (arc4random() % 256) / 256.0f;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}
@end
