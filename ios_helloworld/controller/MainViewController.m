//
//  MainViewController.m
//  ios_helloworld
//
//  Created by wei on 2017/3/27.
//  Copyright © 2017年 wei. All rights reserved.
//

#import "MainViewController.h"
#import "ButtonViewController.h"
#import "TextFieldController.h"
#import "StatusBarController.h"
#import "LabelController.h"
#import "ToolBarController.h"
#import "TabAController.h"
#import "TabBController.h"
#import "TabBarDemoController.h"
#import "ObjCallCController.h"
#import "ObjCallCPlusController.h"
#import "UIImageViewController.h"
#import "ScrollViewController.h"

@interface MainViewController()<UITableViewDataSource,UITableViewDelegate>

@property(strong) UITableView* mainTableView;
@property NSMutableArray <TableItemModel *> * datalist;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    _datalist = [self generatorItemList];
    [super viewDidLoad];
    
    _mainTableView = [
                      [UITableView alloc]initWithFrame:
                      CGRectMake(0,
                                 20,
                                 CGRectGetWidth([UIScreen mainScreen].bounds),
                                 CGRectGetHeight([UIScreen mainScreen].bounds)-20
                                 )
                      ];
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    [self.view addSubview:_mainTableView];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleTableIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: SimpleTableIdentifier];
    }
    
    cell.textLabel.text =[[_datalist objectAtIndex:[indexPath row]] title];
//    cell.accessoryView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"me_today_arrow.png"]];
    return cell;
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    

        NSString * stringValue=[@([indexPath row]) stringValue];
        [self logPrint:[@"click:" stringByAppendingString:stringValue]];
    
        [self jump:[[_datalist objectAtIndex:indexPath.row].cls new]];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _datalist.count;
}

-(NSMutableArray <TableItemModel *> *)generatorItemList
{
    NSMutableArray<TableItemModel *> * list= [NSMutableArray new];
    
    [list addObject:[[TableItemModel alloc] initWith:@"Label":[LabelController class]]];
    [list addObject:[[TableItemModel alloc] initWith:@"Button":[ButtonViewController class]]];
    [list addObject:[[TableItemModel alloc] initWith:@"TextField":[TextFieldController class]]];
    [list addObject:[[TableItemModel alloc] initWith:@"ImageView":[UIImageViewController class]]];
    
    [list addObject:[[TableItemModel alloc] initWith:@"UISwitch+StatusBar":[StatusBarController class]]];
    [list  addObject:[[TableItemModel alloc]initWith:@"Toolbar" :[ToolBarController class]]];
    [list  addObject:[[TableItemModel alloc]initWith:@"TabBarController" :[TabBarDemoController class]]];
    
    [list  addObject:[[TableItemModel alloc]initWith:@"ScrollView" :[ScrollViewController class]]];

    
    [list addObject:[[TableItemModel alloc] initWith:@"ObjCallC":[ObjCallCController class]]];
    [list addObject:[[TableItemModel alloc] initWith:@"ObjCallCPlus":[ObjCallCPlusController class]]];
    
    return list;
}


-(NSString *)getTitle
{
    return [self getStr:@"HOME"];
}

@end
