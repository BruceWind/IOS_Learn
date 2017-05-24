#import "SLWeiboController.h"
#import "SLWeiBo.h"
#import "SLWeiBoCell.h"
#import "SLWeiBoFrame.h"

@interface SLWeiboController ()


@end

@implementation SLWeiboController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableView ;
}

#pragma mark -懒加载
-(NSArray *)statusFrames
{
    if (_statusFrames==nil) {
        
        
        
        NSMutableArray *mutearr=[NSMutableArray arrayWithCapacity:2];

        for (int i=0;i<2;i++) {
            //字典转模型，传进去一个字典，返回一个微博模型
            SLWeiBo *weibo=[[SLWeiBo alloc] init];
            weibo.icon = @"http://leanote.com/public/upload/528/55d365b838f4112b52000e8c/images/logo/c1e6ec2cc6ab4c801e2a1155c7d56baf.jpg";
            weibo.text = @"dasdasd";
            weibo.name=@"name";
            weibo.picture = @"http://images.cnitblog.com/i/429343/201405/292022544161450.png";
            //计算每一个表格的高度并保存
            SLWeiBoFrame *weiboframe=[[SLWeiBoFrame alloc] init];
            
            weiboframe.weibo=weibo;
            //把Frame模型保存到数组中
            [mutearr addObject:weiboframe];
        }
        
        self.statusFrames=[mutearr mutableCopy];
    }
    return _statusFrames;
}

#pragma mark -实现数据源方法
/**
 *  tableview中返回一共有多少组，有一组的话，可以省略不写
 *
 *  @param tableView
 *
 *  @return 返回有多少组
 */
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
/**
 *  tableview返回一共有多少个单元格
 *
 *  @param tableView
 *  @param section   第几组
 *
 *  @return 某组有多少单元格
 */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.statusFrames.count;
}

/**
 *  tableView返回每个单元格的对象
 *
 *  @param tableView
 *  @param indexPath 保存有该对象是第几组，第几个单元格
 *
 *  @return 返回每个单元格对象
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1.从缓存中取数据
    static NSString *identifier=@"status";
    SLWeiBoCell *cell=[tableView dequeueReusableCellWithIdentifier:identifier];
    //2创建表格
    if (cell==nil) {
        cell=[[SLWeiBoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    //3设置数据
    SLWeiBoFrame *frame=self.statusFrames[indexPath.row];
    cell.itemframe=frame;
    return cell;
}
#pragma mark -实现高度的代理方法
/**
 *  计算每个单元格的高度
 *
 *  @param tableView
 *  @param indexPath 该单元格是某组某行的单元格
 *
 *  @return 返回该单元格的高度
 */
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SLWeiBoFrame *frame=self.statusFrames[indexPath.row];
    return frame.cellHeight;
}
/**
 *  设置是否显示状态栏
 *
 *  @return 返回YES，不显示，返回NO，显示
 */
-(BOOL)prefersStatusBarHidden
{
    return NO;
}
@end
