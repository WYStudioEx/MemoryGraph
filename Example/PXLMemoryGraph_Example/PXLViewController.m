//
//  PXLViewController.m
//  PXLMemoryGraph_Example
//
//  Created by chiwei.feng@pixocial.com on06.09.2020.
//  Copyright (c) 2021 chiwei.feng@pixocial.com. All rights reserved.
//

#import "PXLViewController.h"
#import "PXLMemoryGraph_Example-Swift.h"

#import <PXLMemoryGraph/PXLMemoryService.h>


@interface PXLViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;

@end


@implementation PXLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self configureTableView];
    [self configureNavigationItem];
}

- (void)buildGraph {
    PXLMemoryService *memoryService = [PXLMemoryService new];
    NSDictionary *graph = [memoryService fullMemoryGraph];
    NSLog(@"%@", graph);
    
    // fengchiwei 转为 String 发送给服务端
    // [[NSString stringWithFormat:@"%@", graph] UTF8String]);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (void)configureTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)configureNavigationItem {
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:@"Graph" style:UIBarButtonItemStylePlain target:self action:@selector(buildGraph)];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.navigationController pushViewController:[[PXLLeakTestViewController alloc] init] animated:YES];
}

@end
