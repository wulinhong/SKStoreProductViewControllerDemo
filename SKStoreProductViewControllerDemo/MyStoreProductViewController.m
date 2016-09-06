//
//  MyStoreProductViewController.m
//  SKStoreProductViewControllerDemo
//
//  Created by lh_w on 16/8/31.
//  Copyright © 2016年 lh_w. All rights reserved.
//

#import "MyStoreProductViewController.h"

@interface MyStoreProductViewController ()
@property (nonatomic, strong) UIView *storeView;

@end

@implementation MyStoreProductViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    //
    self.storeView = self.view.subviews.firstObject;
    self.storeView.userInteractionEnabled = NO;
    self.storeView = self.storeView.subviews.firstObject;
    NSLog(@"%@", self.storeView);
    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:.2];
    [self.storeView addSubview:view];
    [self.storeView bringSubviewToFront:view];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"aaa");
}

@end
