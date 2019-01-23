//
//  JBKTestController0.m
//  mzyTimerManager
//
//  Created by maoziyue on 2019/1/23.
//  Copyright © 2019 maoziyue. All rights reserved.
//

#import "JBKTestController0.h"
#import "JBKTestController1.h"
#import "TimerManager.h"


/**
 * 弱引用
 */
#define kWeakSelf(type) __weak typeof(type) weak##type = type;

/**
 * 强引用
 */
#define kStrongSelf(type) __strong typeof(type) type = weak##type;

@interface JBKTestController0 ()

@property (nonatomic, assign) NSInteger count;

@end

@implementation JBKTestController0

- (void)dealloc {
    NSLog(@"------JBKTestController0 释放---------");
    [[TimerManager manager] deleteTimerWithName:@"验证码的倒计时"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"test0";
    
    
    [self startTimer];
    
    
}


- (void)startTimer {
    
    kWeakSelf(self);
    [[TimerManager manager] addTimerWithName:@"验证码的倒计时" timerSpace:60.0 timercb:^{
        //kStrongSelf(self);
        weakself.count ++;
        weakself.title = [NSString stringWithFormat:@"%ld",weakself.count];
        NSLog(@"--------count:%ld---------",weakself.count);
    }];
    
}





- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    JBKTestController1 *vc = [[JBKTestController1 alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}






@end
