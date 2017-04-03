//
//  TextFieldController.m
//  ios_helloworld
//
//  Created by wei on 2017/4/4.
//  Copyright © 2017年 魏宗伟. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextFieldController.h"

@interface TextFieldController()

@end




@implementation TextFieldController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self addTextField];
}

-(void)addTextField{
    // This allocates a label
    UILabel *prefixLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    //This sets the label text
    prefixLabel.text =@" ";
    // This sets the font for the label
    [prefixLabel setFont:[UIFont boldSystemFontOfSize:14]];
    // This fits the frame to size of the text
    [prefixLabel sizeToFit];
    
    // This allocates the textfield and sets its frame
    UITextField *textField = [[UITextField  alloc] initWithFrame:
                              CGRectMake(20, 200, 280, 30)];
    
    // This sets the border style of the text field
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.contentVerticalAlignment =
    UIControlContentVerticalAlignmentCenter;
    [textField setFont:[UIFont boldSystemFontOfSize:14]];
    
    //Placeholder text is displayed when no text is typed
    textField.placeholder = @"Simple Text field";
    
    //Prefix label is set as left view and the text starts after that
    textField.leftView = prefixLabel;
    
    //It set when the left prefixLabel to be displayed
    textField.leftViewMode = UITextFieldViewModeAlways;
    
    // Adds the textField to the view.
    [self.view addSubview:textField];
    
    // sets the delegate to the current class
    textField.delegate = self;
}


//以下三个方法必须都存在 telegate才可以生效
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [super logPrint:[@"textFieldDidBeginEditing" stringByAppendingString:[textField text]]];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    [super logPrint:[@"textFieldDidEndEditing" stringByAppendingString:[textField text]]];
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


@end
