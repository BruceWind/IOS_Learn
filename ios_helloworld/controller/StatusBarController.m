//
//  StatusBarController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/4.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "StatusBarController.h"

@interface StatusBarController()

@property(strong,nonatomic) UISwitch *uiSwitch;

@end

@implementation StatusBarController

-(void)viewDidLoad
{
    [super viewDidLoad];

    [self  addButton];
}

-(void) addButton
{
    _uiSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 60, 20)];
    
    [self.view addSubview:_uiSwitch];
    [_uiSwitch setOn:TRUE];
    [_uiSwitch addTarget:self action:@selector(onSwitched:) forControlEvents:UIControlEventValueChanged];
    
    
    [self setNeedsStatusBarAppearanceUpdate];
}

-(IBAction)onSwitched:(id)sender
{
    [self logPrint:[@"switched:" stringByAppendingString:(_uiSwitch.on) ? @"TRUE":@"FALSE"]];
    
    [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    
    [self setNeedsStatusBarAppearanceUpdate];
}


//To show the status bar:
-(void)showTheStatusBar
{
    [self setNeedsStatusBarAppearanceUpdate];
}

//And to hide the status bar:
-(void)hideTheStatusBar
{
    [self setNeedsStatusBarAppearanceUpdate];
}

- (BOOL)prefersStatusBarHidden {
    [self logPrint:@"prefersStatusBarHidden"];
//    return _uiSwitch==nil?YES:_uiSwitch.on;
    return !_uiSwitch.on;
}


@end
