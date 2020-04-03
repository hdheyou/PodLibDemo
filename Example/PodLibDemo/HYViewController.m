//
//  HYViewController.m
//  PodLibDemo
//
//  Created by heyou on 04/03/2020.
//  Copyright (c) 2020 heyou. All rights reserved.
//

#import "HYViewController.h"
#import "HYUtils.h"

@interface HYViewController ()
// 测试文本
@property(nonatomic, strong) UILabel *testLabel;

@end

@implementation HYViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViews];
}

- (void)setupViews {
    [self.view addSubview:self.testLabel];
}

#pragma mark - lazy
- (UILabel *)testLabel {
    if (!_testLabel) {
        CGSize screenSize = [UIScreen mainScreen].bounds.size;
        _testLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.f, 10.f, screenSize.width - 10.f*2, screenSize.height - 10.f*2)];
        _testLabel.font = [UIFont systemFontOfSize:22.f];
        _testLabel.textColor = [UIColor blackColor];
        _testLabel.textAlignment = NSTextAlignmentCenter;
        _testLabel.text = [HYUtils getTestString];
    }
    return _testLabel;
}

@end
