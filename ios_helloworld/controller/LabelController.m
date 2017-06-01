//
//  LabelController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/4.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LabelController.h"

@interface LabelController()


@end

@implementation LabelController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //测试线程
//    [self performSelectorInBackground:@selector(addLabel) withObject:nil];
//    [self performSelectorOnMainThread:@selector(printThreadId) withObject:nil waitUntilDone:TRUE];
//    [self printThreadId];
//    [self performSelector:@selector(printThreadId) withObject:nil afterDelay:0.5];//afterDelay可以传递小数
    
    //NSThread
    NSThread *thread = [[NSThread alloc]initWithTarget:self selector:@selector(addLabel) object:nil];
    [thread start];
    
    //Timer
//    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(printThreadId) userInfo:nil repeats:true];
    
    
    //GCD 取一个默认优先级的队列
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0);
    dispatch_sync(queue, ^{
        [super printThreadId];
    });
    
    //GCD once
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [super logPrint:@"onceToken."];
    });
    
    
    //NSOperation
    NSOperationQueue *opQueue = [[NSOperationQueue alloc]init];
    [opQueue setMaxConcurrentOperationCount:1];
    [opQueue addOperationWithBlock:^{
        sleep(2);
        [super logPrint:@"NSOperation addOperationWithBlock 1."];
    }];
    [opQueue addOperationWithBlock:^{
        sleep(1);
        [super logPrint:@"NSOperation addOperationWithBlock 2."];
    }];
    
    //NSOperation blockoper setcompletionblc
    NSBlockOperation * blockOp= [NSBlockOperation blockOperationWithBlock:^{
        sleep(1);
        [super logPrint:@"NSOperation addOperationWithBlock 3."];
    }];
    [blockOp setCompletionBlock:^{
        [super logPrint:@"NSOperation completion."];
    }];
    
    [opQueue addOperation:blockOp];
    [blockOp waitUntilFinished];//阻塞当前线程等到 blockOp执行结束
    [super logPrint:@"NSOperation finishded."];
    
    
}


-(void)addLabel
{
    
    [super logPrint:@"addLablel."];
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:@"用于线程测试Label."];
    _label.textAlignment = NSTextAlignmentCenter;
}

@end
