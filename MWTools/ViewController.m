//
//  ViewController.m
//  MWTools
//
//  Created by meway on 13-11-21.
//  Copyright (c) 2013年 孟伟. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_mTableView;
}

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupView];
}

- (void)setupView
{
    UIButton *btn = [UIButton initWithTitle:@"test" Frame:CGRectMake(100, 100, 100, 100) Font:MWFont(18) bgImage:MWImageMake(nil, nil)];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
        
    UILabel *label = [UILabel initWithFrame:CGRectMake(0, 0, 100, 50) Font:nil TextColor:nil Alignment:NSTextAlignmentLeft Lines:0];
    label.text = @"啊飒飒是飒飒飒飒是是是是是是是是飒飒事实上飒飒是飒飒是是是飒飒是是是飒飒是是是是aaaaaaaaab";
    CGFloat hhh = [label constrainedToSize:CGSizeMake(100, 1000)];
    NSLog(@"%f",hhh);
    [self.view addSubview:label];
    
    _mTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, MainWidth, MainHeight-NAV_HEIGHT) style:UITableViewStylePlain];
    _mTableView.delegate = self;
    _mTableView.dataSource = self;
    [self.view addSubview:_mTableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView loadCellFromClass:[UITableViewCell class]];
    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [tableView heightForRow:indexPath];
}

- (void)btnClicked
{
    NSLog(@"sss");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
