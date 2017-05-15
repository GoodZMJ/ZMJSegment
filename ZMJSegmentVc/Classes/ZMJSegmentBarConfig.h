//
//  ZMJSegmentBarConfig.h
//  ZMJSegmentBar
//
//  Created by ZMJ on 2017/5/15.
//  Copyright © 2017年 ZMJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "UIView+Frame.h"

@interface ZMJSegmentBarConfig : NSObject

+ (instancetype)defaultConfig;

/** 背景颜色 */
@property (nonatomic, strong) UIColor *segmentBarBackColor;

@property (nonatomic, strong) UIColor *itemNormalColor;
@property (nonatomic, strong) UIColor *itemSelectColor;
@property (nonatomic, strong) UIFont *itemFont;

@property (nonatomic, strong) UIColor *indicatorColor;

@property (nonatomic, assign) CGFloat indicatorHeight;
@property (nonatomic, assign) CGFloat indicatorExtraW;

//链式编程
- (ZMJSegmentBarConfig *(^)(UIColor *color))itemNC;

- (ZMJSegmentBarConfig *(^)(UIColor *color))itemSC;


@end
