//
//  ExpandoButton.m
//  Google Button
//
//  Created by App Partner on 11/13/14.
//  Copyright (c) 2014 App Partner. All rights reserved.
//

#import "ExpandoButton.h"

@interface ExpandoButton ()

@end

@implementation ExpandoButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//- (id)init
//{
//    return [self initWithFrame:CGRectZero];
//}
//
//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self)
//    {
//        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
//        [self setUpSubviews];
//        [self setUpConstraints];
//    }
//
//    return self;
//}
//
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        self.selected = NO;
        [self setTranslatesAutoresizingMaskIntoConstraints:NO];
        self.layer.shadowOffset = CGSizeMake(2, 2);
        self.layer.shadowRadius = 1;
        self.layer.shadowOpacity = 0.1;
        //        self.buttonHeight = self.frame.size.height;
        //        self.buttonWidth = self.frame.size.width;
        //        self.buttonWidthConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:self.buttonWidth];
        //        self.buttonHeightConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:self.buttonHeight];
        //        [self addConstraint:self.buttonWidthConstraint];
        //        [self addConstraint:self.buttonHeightConstraint];
    }

    return self;
}
//
- (void)setUpSubviews
{
    for (int i = 0; i < self.buttonTitles.count; i++)
    {
        UIView *button = [[UIView alloc] init];
        [self addSubview:button];
        [button addConstraint:self.buttonWidth];
        [button addConstraint:self.buttonHeight];
    }
}
//
//- (void)setUpConstraints
//{
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.title attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.title attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:8.0]];
//}

@end
