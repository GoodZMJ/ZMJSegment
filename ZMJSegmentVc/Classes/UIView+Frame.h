//
//  UIView+Frame.h
//  01-BuDeJie
//
//  Created by zmj on 16/1/18.
//  Copyright © 2016年 xiaomage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

#define ZMJRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]

@property CGFloat zmj_x;
@property CGFloat zmj_y;
@property CGFloat zmj_width;
@property CGFloat zmj_height;
@property CGFloat zmj_centerX;
@property CGFloat zmj_centerY;

/**
 *  判断self和view是否重叠
 */
- (BOOL)zmj_intersectWithView:(UIView *)view;

// 从nib文件中装载view
+ (id) loadFromNibNamed:(NSString*)name isKindOf:(Class)cls;
+ (id) loadFromNibNamed:(NSString*)name;
+ (id) loadFromNib;


// AutoLayout

- (NSLayoutConstraint *)addWidthConstraint:(CGFloat)width;

- (NSLayoutConstraint *)addHeightConstraint:(CGFloat)height;

- (void)addFlexibleWidthConstraintToView:(UIView *)view margin:(CGFloat)margin;

- (void)addFlexibleHeightConstraintToView:(UIView *)view margin:(CGFloat)margin;

- (void)addFlexibleWidthConstraintToView:(UIView *)view leftMargin:(CGFloat)leftMargin rightMargin:(CGFloat)rightMargin;

- (void)addFlexibleHeightConstraintToView:(UIView *)view topMargin:(CGFloat)topMargin bottomMargin:(CGFloat)bottomMargin;

- (void)addFlexibleFullConstraintToView:(UIView *)view top:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

- (void)addStayTopConstraintToView:(UIView *)view height:(CGFloat)height;

- (void)addStayBottomConstraintToView:(UIView *)view height:(CGFloat)height;

// Layer

/// 设置圆角
- (void)setCornerRadius:(CGFloat)radius;
/// 设置圆角（指定角）
- (void)setCornerRadius:(CGFloat)radius atRectCorner:(UIRectCorner)corners;
/// 设置圆角（指定角）
- (void)setCornerRadius:(CGFloat)radius atRectCorner:(UIRectCorner)corners withFrame:(CGRect)frame;
/// 设置边框
- (void)setBoarderWidth:(CGFloat)width color:(UIColor *)color;
/// 设置虚线边框，lineDashPattern:@[@4,@2],虚线小段长度,虚线间隙
- (void)setBoarderWidth:(CGFloat)width color:(UIColor *)color lineDashPattern:(NSArray *)lineDashPattern;

//快速从xib中加载View
+ (instancetype)zmj_viewFromXib;
@end
