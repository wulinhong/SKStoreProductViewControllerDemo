//
//  ViewController.m
//  SKStoreProductViewControllerDemo
//
//  Created by lh_w on 16/8/31.
//  Copyright © 2016年 lh_w. All rights reserved.
//

#import "ViewController.h"
#import "MyStoreProductViewController.h"
#import "NSData+new.h"

@interface ViewController () <SKStoreProductViewControllerDelegate>

@property (nonatomic, strong)NSArray *data1;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"demo";
    
}

- (IBAction)jumpToAppStore:(id)sender {
    MyStoreProductViewController *sKStoreProductViewController = [[MyStoreProductViewController alloc]init];
    sKStoreProductViewController.view.frame = CGRectMake(0, 100, self.view.frame.size.width, 300);
    sKStoreProductViewController.delegate = self;
    [sKStoreProductViewController loadProductWithParameters:@{SKStoreProductParameterITunesItemIdentifier:@"1114459297"} completionBlock:^(BOOL result, NSError * _Nullable error) {
        if (result) {
            [self presentViewController:sKStoreProductViewController animated:YES completion:nil];
        } else {
            NSLog(@"error:%@",error);
        }
    }];
}

//取消按钮监听
- (void)productViewControllerDidFinish:(SKStoreProductViewController *)viewController{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
