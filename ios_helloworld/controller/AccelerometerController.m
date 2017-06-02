//
//  AccelerometerController.m
//  ios_helloworld
//
//  Created by wei on 2017/6/2.
//  Copyright © 2017年 wei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AccelerometerController.h"

@interface AccelerometerController()

@end
@implementation AccelerometerController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [[UIAccelerometer sharedAccelerometer]setDelegate:self];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration{
    [[super label] setText:[NSString stringWithFormat:@"%f %f %f",acceleration.x,acceleration.y,acceleration.z]];
}

@end
