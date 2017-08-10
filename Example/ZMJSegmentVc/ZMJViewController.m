//
//  ZMJViewController.m
//  ZMJSegmentVc
//
//  Created by 609693897@qq.com on 05/15/2017.
//  Copyright (c) 2017 609693897@qq.com. All rights reserved.
//

#import "ZMJViewController.h"
#import <ZMJSegmentVc/ZMJSegmentVc.h>
@interface ZMJViewController ()

@property (nonatomic, strong) ZMJSegmentVc *segmentVC;

@end

@implementation ZMJViewController

- (ZMJSegmentVc *)segmentVC
{
    if (!_segmentVC) {
        
        _segmentVC = [[ZMJSegmentVc alloc] init];
        
        [self addChildViewController:_segmentVC];
    }
    return _segmentVC;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    NSMutableArray *items = [NSMutableArray array];
    
    NSMutableArray *childVcArr = [NSMutableArray array];
    
    // 添加几个自控制器
    // 在contentView, 展示子控制器的视图内容
    
    for (NSInteger i = 0; i < 10; i++) {
        
        [items addObject:[NSString stringWithFormat:@"第%zd个",i]];
        
        UIViewController *vc = [[UIViewController alloc] init];
        
        vc.view.backgroundColor = ZMJRandomColor;
        
        [childVcArr addObject:vc];
        
    }
  
    
    self.segmentVC.segmentBar.frame = CGRectMake(0, 0, 300, 35);
    
    self.navigationItem.titleView = self.segmentVC.segmentBar;
    
    //    self.segmentVC.segmentBar.backgroundColor = [UIColor greenColor];
    
    [self.segmentVC setUpWithItems:items childVCs:childVcArr];
    
    
    self.segmentVC.view.frame = self.view.bounds;
    [self.view addSubview:self.segmentVC.view];
    
    [self.segmentVC.segmentBar updateWithConfig:^(ZMJSegmentBarConfig *config) {
        
        //        config.segmentBarBackColor = [UIColor cyanColor];
        
        config.itemSC([UIColor brownColor]).itemNC([UIColor yellowColor]);
//        config.itemFont = [UIFont fontWithName:@"Zapfino" size:17.0];
        
        config.indicatorHeight = 2;
        config.indicatorColor = [UIColor blueColor];
        config.indicatorExtraW = 0;
        
    }];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
