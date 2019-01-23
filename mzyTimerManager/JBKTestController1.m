//
//  JBKTestController1.m
//  mzyTimerManager
//
//  Created by maoziyue on 2019/1/23.
//  Copyright © 2019 maoziyue. All rights reserved.
//

#import "JBKTestController1.h"

@interface JBKTestController1 ()

@end

@implementation JBKTestController1

- (void)viewDidLoad {
    [super viewDidLoad];
  
 self.title = @"触摸屏幕返回第一页";
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}






@end
