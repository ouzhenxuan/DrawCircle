//
//  ThreeController.m
//  DrawCircle
//
//  Created by 区振轩 on 16/8/18.
//  Copyright © 2016年 区振轩. All rights reserved.
//

#import "ThreeController.h"

@interface ThreeController ()<UITableViewDelegate,UITableViewDataSource>


@end


@implementation ThreeController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    
    UITableView * table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64) style:UITableViewStylePlain];
    
    table.delegate = self;
    table.dataSource = self;
    
    
    
    [self.view addSubview:table];
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"threeCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"threeCell"];
        
        UILabel * num = [[UILabel alloc] initWithFrame:CGRectMake(300, 0, 20, 44)];
        num.text = @"3";
        [cell addSubview:num];

    
//        cell.layer.shouldRasterize = YES;
//        cell.layer.rasterizationScale = [UIScreen mainScreen].scale;
        
        UIImageView * view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view.frame = CGRectMake(0, 0, 44, 44);
        view.layer.cornerRadius = 22;
        view.layer.masksToBounds = YES;
//        view.layer.shouldRasterize = YES;
//        view.layer.rasterizationScale = [UIScreen mainScreen].scale;
        [cell addSubview:view];
        
        
        UIImageView * view1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view1.frame = CGRectMake(50, 0, 44, 44);
        view1.layer.cornerRadius = 22;
        view1.layer.masksToBounds = YES;
//        view1.layer.shouldRasterize = YES;
//        view1.layer.rasterizationScale = [UIScreen mainScreen].scale;
        [cell addSubview:view1];
        
        UIImageView * view2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view2.frame = CGRectMake(100, 0, 44, 44);
        view2.layer.cornerRadius = 22;
        view2.layer.masksToBounds = YES;
//        view2.layer.shouldRasterize = YES;
//        view2.layer.rasterizationScale = [UIScreen mainScreen].scale;
        [cell addSubview:view2];
        
        UIImageView * view3= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view3.frame = CGRectMake(150, 0, 44, 44);
        view3.layer.cornerRadius = 22;
        view3.layer.masksToBounds = YES;
//        view3.layer.shouldRasterize = YES;
//        view3.layer.rasterizationScale = [UIScreen mainScreen].scale;
        [cell addSubview:view3];
        
    }
    
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}


@end
