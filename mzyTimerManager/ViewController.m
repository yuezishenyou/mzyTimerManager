//
//  ViewController.m
//  mzyTimerManager
//
//  Created by maoziyue on 2019/1/23.
//  Copyright © 2019 maoziyue. All rights reserved.
//

#import "ViewController.h"
#import "JBKTestController0.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"触摸屏幕进入";
    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    JBKTestController0 *vc = [[JBKTestController0 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}








@end
