//
//  OneController.m
//  DrawCircle
//
//  Created by 区振轩 on 16/8/18.
//  Copyright © 2016年 区振轩. All rights reserved.
//

#import "OneController.h"
#import "OneViewCell.h"

@interface OneController () <UITableViewDelegate,UITableViewDataSource>

@end

@implementation OneController



- (void)viewDidLoad{
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    
    UITableView * table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64) style:UITableViewStylePlain];
    
    table.delegate = self;
    table.dataSource = self;
    
    
    
    [self.view addSubview:table];

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSLog(@"计算分组数");
    return 1;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell * cell = [[UITableViewCell alloc] init];
//    cell.textLabel.text = @"123";
    OneViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"oneCell"];
    if (cell == nil) {
        cell = [[OneViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"oneCell"];
    }
    
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}



@end
