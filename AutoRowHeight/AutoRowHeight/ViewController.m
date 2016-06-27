//
//  ViewController.m
//  AutoRowHeight
//
//  Created by qingyun on 16/6/27.
//  Copyright © 2016年 QingYun. All rights reserved.
//

#import "ViewController.h"
#import "Cell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *cellTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.estimatedRowHeight = 60.f;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    self.cellTitle = @[@"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf",@"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf",@"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf",@"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf",@"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf",@"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf", @"asdf asndf adfn adf adf", @"asdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asfasdf asndf adfn adf adf asdf adf asdf asdf asdf asdf asf"];
    
}

#pragma mark - table view datasource delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.cellTitle.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"cell:%ld", indexPath.row);
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    //banding
    cell.contentLabel.text = self.cellTitle[indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"estimatedRowHeight:%ld", indexPath.row);
    return 90.f;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"rowHeight:%ld", indexPath.row);
    //实例化一个cell,绑定内容,根据内容计算出高度
    Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.contentLabel.text = self.cellTitle[indexPath.row];
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
    return size.height + 1;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
