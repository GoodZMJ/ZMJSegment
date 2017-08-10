//
//  ZMJSegmentBarConfig.m
//  ZMJSegmentBar
//
//  Created by ZMJ on 2017/5/15.
//  Copyright © 2017年 ZMJ. All rights reserved.
//

#import "ZMJSegmentBarConfig.h"

@implementation ZMJSegmentBarConfig

//MARK:- 默认配置
+ (instancetype)defaultConfig
{
    ZMJSegmentBarConfig *config = [[ZMJSegmentBarConfig alloc] init];
    config.segmentBarBackColor = [UIColor clearColor];
    config.itemNormalFont = [UIFont systemFontOfSize:12.0];
    config.itemSelectFont = [UIFont systemFontOfSize:18.0];
    config.itemNormalColor = [UIColor lightGrayColor];
    config.itemSelectColor = [UIColor redColor];
    
    config.indicatorColor = [UIColor redColor];
    config.indicatorHeight = 2;
    config.indicatorExtraW = 10;
    
    return config;
}

- (ZMJSegmentBarConfig *(^)(UIColor *))itemNC
{
    return ^(UIColor * color){
        
        self.itemNormalColor = color;
    
        return self;
    };

}

- (ZMJSegmentBarConfig *(^)(UIColor *))itemSC
{
    return ^(UIColor * color){
    
        self.itemSelectColor = color;
        
        return self;
    
    };

}



@end
