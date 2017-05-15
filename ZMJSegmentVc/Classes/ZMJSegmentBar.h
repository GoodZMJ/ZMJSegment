//
//  ZMJSegmentBar.h
//  ZMJSegmentBar
//
//  Created by ZMJ on 2017/5/15.
//  Copyright © 2017年 ZMJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMJSegmentBarConfig.h"

@class ZMJSegmentBar;
@protocol ZMJSegmentBarDelegate <NSObject>

/**
 代理方法, 告诉外界, 内部的点击数据
 
 @param segmentBar segmentBar
 @param toIndex    选中的索引(从0开始)
 @param fromIndex  上一个索引
 */
- (void)segmentBar: (ZMJSegmentBar *)segmentBar didSelectIndex: (NSInteger)toIndex fromIndex: (NSInteger)fromIndex;

@end


@interface ZMJSegmentBar : UIView

/**
 快速创建一个选项卡控件
 
 @param frame frame
 
 @return 选项卡控件
 */
+ (instancetype)segmentBarWithFrame: (CGRect)frame;

/** 代理 */
@property (nonatomic, weak) id<ZMJSegmentBarDelegate> delegate;
/** 数据源 */
@property (nonatomic, strong) NSArray <NSString *>*items;
/** 当前选中的索引, 双向设置 */
@property (nonatomic, assign) NSInteger selectIndex;

//更新Bar的样式属性
- (void)updateWithConfig: (void(^)(ZMJSegmentBarConfig *config))configBlock;



@end
