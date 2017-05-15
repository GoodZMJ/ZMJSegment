//
//  ZMJSegmentVc.h
//  ZMJSegmentBar
//
//  Created by ZMJ on 2017/5/15.
//  Copyright © 2017年 ZMJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZMJSegmentBar.h"


@interface ZMJSegmentVc : UIViewController

@property (nonatomic, weak) ZMJSegmentBar *segmentBar;

//主要方法,给一个itemsbar名字和子控制器,帮你创建对应的选项卡
- (void)setUpWithItems: (NSArray <NSString *>*)items childVCs: (NSArray <UIViewController *>*)childVCs;



@end
