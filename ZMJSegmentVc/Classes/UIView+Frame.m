//
//  UIView+Frame.m
//  01-BuDeJie
//
//  Created by zmj on 16/1/18.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)

- (BOOL)zmj_intersectWithView:(UIView *)view
{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    
    CGRect rect1 = [self convertRect:self.bounds toView:nil];
    CGRect rect2 = [view convertRect:view.bounds toView:nil];
    return CGRectIntersectsRect(rect1, rect2);
}

- (CGFloat)zmj_height
{
    return self.frame.size.height;
}
- (void)setZmj_height:(CGFloat)zmj_height
{
    CGRect frame = self.frame;
    frame.size.height = zmj_height;
    self.frame = frame;
}
- (CGFloat)zmj_width
{
     return self.frame.size.width;
}

- (void)setZmj_width:(CGFloat)zmj_width
{
    CGRect frame = self.frame;
    frame.size.width = zmj_width;
    self.frame = frame;
}

- (void)setZmj_x:(CGFloat)zmj_x
{
    CGRect frame = self.frame;
    frame.origin.x = zmj_x;
    self.frame = frame;

}
- (CGFloat)zmj_x
{
    return self.frame.origin.x;
}

- (void)setZmj_y:(CGFloat)zmj_y
{
    CGRect frame = self.frame;
    frame.origin.y = zmj_y;
    self.frame = frame;
}
- (CGFloat)zmj_y
{
    return self.frame.origin.y;
}

- (void)setZmj_centerX:(CGFloat)zmj_centerX
{
    CGPoint center = self.center;
    center.x = zmj_centerX;
    self.center = center;
}
- (CGFloat)zmj_centerX
{
    return self.center.x;
}
- (void)setZmj_centerY:(CGFloat)zmj_centerY
{
    CGPoint center = self.center;
    center.y = zmj_centerY;
    self.center = center;
}
- (CGFloat)zmj_centerY
{
    return self.center.y;
}

#pragma mark- (从nib文件中装载view)
+ (id) loadFromNibNamed:(NSString*)name isKindOf:(Class)cls
{
    NSArray* array = [[NSBundle mainBundle] loadNibNamed:name owner:nil options:0];
    for (NSObject* object in array)
    {
        if ([object isKindOfClass:cls])
        {
            return object;
        }
    }
    return nil;
}

+ (id) loadFromNibNamed:(NSString*)name
{
    return [self loadFromNibNamed:name isKindOf:self];
}

+ (id) loadFromNib
{
    NSString* clsName = NSStringFromClass(self);
    return [self loadFromNibNamed:clsName isKindOf:self];
}

#pragma mark- (AutoLayout)

- (NSLayoutConstraint *)addWidthConstraint:(CGFloat)width
{
    NSLayoutConstraint *widthConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:width];
    [self addConstraint:widthConstraint];
    return widthConstraint;
}

- (NSLayoutConstraint *)addHeightConstraint:(CGFloat)height
{
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:height];
    [self addConstraint:heightConstraint];
    return heightConstraint;
}

- (void)addFlexibleWidthConstraintToView:(UIView *)view margin:(CGFloat)margin
{
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-margin-[view]-margin-|" options:0 metrics:@{@"margin": [NSNumber numberWithDouble:margin]} views:@{@"view":view}]];
}

- (void)addFlexibleHeightConstraintToView:(UIView *)view margin:(CGFloat)margin
{
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-margin-[view]-margin-|" options:0 metrics:@{@"margin": [NSNumber numberWithDouble:margin]} views:@{@"view":view}]];
}

- (void)addFlexibleWidthConstraintToView:(UIView *)view leftMargin:(CGFloat)leftMargin rightMargin:(CGFloat)rightMargin
{
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-left-[view]-right-|" options:0 metrics:@{@"left": [NSNumber numberWithDouble:leftMargin], @"right": [NSNumber numberWithDouble:rightMargin]} views:@{@"view":view}]];
}

- (void)addFlexibleHeightConstraintToView:(UIView *)view topMargin:(CGFloat)topMargin bottomMargin:(CGFloat)bottomMargin
{
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-top-[view]-bottom-|" options:0 metrics:@{@"top": [NSNumber numberWithDouble:topMargin], @"bottom": [NSNumber numberWithDouble:bottomMargin]} views:@{@"view":view}]];
}

- (void)addFlexibleFullConstraintToView:(UIView *)view top:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left
{
    [self addFlexibleWidthConstraintToView:view leftMargin:left rightMargin:right];
    [self addFlexibleHeightConstraintToView:view topMargin:top bottomMargin:bottom];
}

- (void)addStayTopConstraintToView:(UIView *)view height:(CGFloat)height
{
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[view]-0-|" options:0 metrics:nil views:@{@"view": view}]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[view(height)]" options:0 metrics:@{@"height":[NSNumber numberWithDouble:height]} views:@{@"view":view}]];
}

- (void)addStayBottomConstraintToView:(UIView *)view height:(CGFloat)height;
{
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[view]-0-|" options:0 metrics:nil views:@{@"view": view}]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view(height)]-0-|" options:0 metrics:@{@"height":[NSNumber numberWithDouble:height]} views:@{@"view":view}]];
}

#pragma mark- (Layer)

/// 设置圆角
- (void)setCornerRadius:(CGFloat)radius
{
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = YES;
}

/// 设置圆角（指定角）
- (void)setCornerRadius:(CGFloat)radius atRectCorner:(UIRectCorner)corners
{
    [self setCornerRadius:radius atRectCorner:corners withFrame:self.bounds];
}

/// 设置圆角（指定角）
- (void)setCornerRadius:(CGFloat)radius atRectCorner:(UIRectCorner)corners withFrame:(CGRect)frame
{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:frame byRoundingCorners:corners cornerRadii:CGSizeMake(radius, corners)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = frame;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    self.layer.masksToBounds = YES;
}

/// 设置边框
- (void)setBoarderWidth:(CGFloat)width color:(UIColor *)color
{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
    self.layer.masksToBounds = YES;
}

/// 设置虚线边框
- (void)setBoarderWidth:(CGFloat)width color:(UIColor *)color lineDashPattern:(NSArray *)lineDashPattern
{
    CAShapeLayer *border = [CAShapeLayer layer];
    border.strokeColor = color.CGColor;
    border.fillColor = nil;
    border.lineDashPattern = lineDashPattern;
    border.lineWidth = width;
    UIBezierPath *borderPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(self.layer.cornerRadius, UIRectCornerAllCorners)];
    border.path = borderPath.CGPath;
    border.frame = self.bounds;
    [self.layer addSublayer:border];
}


#pragma mark- (快速从xib中加载)
+ (instancetype)zmj_viewFromXib
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}


@end
