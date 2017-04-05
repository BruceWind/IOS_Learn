
#import <Foundation/Foundation.h>
#import "TabBController.h"

@interface TabBController()
@property UILabel *label;
@end

@implementation TabBController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self addLabel];
}


-(void)addLabel
{
    _label= [[UILabel alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen]bounds].size.width , 20)];
    [self.view addSubview:_label];
    
    [_label setText:[self getTag]];
    _label.textAlignment = NSTextAlignmentCenter;
    
}
@end
