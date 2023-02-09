//
//  CustomNavigationBar.m
//  NavigationBarWithShadowDemo
//
//  Created by Derek Yang on 01/07/12.
//  Copyright 2012 Derek Yang. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "CustomNavigationBar.h"

@implementation CustomNavigationBar

- (void)awakeFromNib {
    [super awakeFromNib];
    //_image = [UIImage imageNamed:@"Title.png"];
    self.backgroundColor = [UIColor colorWithRed:46.0 / 255.0 green:149.0 / 255.0 blue:206.0 / 255.0 alpha:1.0];
    self.tintColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1.0];

    // draw shadow
    self.layer.masksToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(0, 1);
    self.layer.shadowOpacity = 0.4;
    self.layer.shadowRadius = 1;
    CGRect rec = self.layer.bounds;
    rec.size.width = [UIScreen mainScreen].bounds.size.width;
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:rec].CGPath;
}

- (void)drawRect:(CGRect)rect
{
    //[_image drawInRect:rect];
}


@end
