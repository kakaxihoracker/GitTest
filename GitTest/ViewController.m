//
//  ViewController.m
//  GitTest
//
//  Created by horacker on 2017/5/27.
//  Copyright © 2017年 horacker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"first git test");
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    lab.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:lab];

    // https://juejin.im/post/59291f1c44d9040064213c0f
    // http://ryanipete.com/blog/ios/swift/objective-c/uidebugginginformationoverlay/?from=timeline&isappinstalled=0
    // 系统再带悬浮窗口调试工具
   UIWindow *debug =  (UIWindow *)NSClassFromString(@"UIDebuggingInformationOverlay");
    [debug performSelector:NSSelectorFromString(@"prepareDebuggingOverlay")];
   SEL debugSel = NSSelectorFromString(@"overlay");
    [[debug performSelector:debugSel] performSelector:NSSelectorFromString(@"toggleVisibility")];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
