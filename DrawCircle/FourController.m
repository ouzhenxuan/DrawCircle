//
//  FourController.m
//  DrawCircle
//
//  Created by 区振轩 on 16/8/18.
//  Copyright © 2016年 区振轩. All rights reserved.
//

#import "FourController.h"

@interface FourController ()<UITableViewDelegate,UITableViewDataSource>


@end

@implementation FourController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    
    UITableView * table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64) style:UITableViewStylePlain];
    
    table.delegate = self;
    table.dataSource = self;
    
    
    
    [self.view addSubview:table];
    
}


;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"fourCell"];
    if (cell == nil) {
        
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"fourCell"];
        
        cell.layer.shouldRasterize = YES;
        cell.layer.rasterizationScale = [UIScreen mainScreen].scale;
        
        UILabel * num = [[UILabel alloc] initWithFrame:CGRectMake(300, 0, 20, 44)];
        num.text = @"4";
        [cell addSubview:num];
        
        UIImageView * view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view.frame = CGRectMake(0, 0, 44, 44);
        [cell addSubview:view];
        
        CALayer *maskLayer        = [CALayer layer];
        maskLayer.frame           = view.bounds;
        maskLayer.contents        = (id)[UIImage imageNamed:@"xingxing"].CGImage;
        view.layer.mask = maskLayer;
    
        CALayer *maskLayer1        = [CALayer layer];
        maskLayer1.frame           = view.bounds;
        maskLayer1.contents        = (id)[UIImage imageNamed:@"xingxing"].CGImage;
        
        CALayer *maskLayer2        = [CALayer layer];
        maskLayer2.frame           = view.bounds;
        maskLayer2.contents        = (id)[UIImage imageNamed:@"xingxing"].CGImage;
        
        CALayer *maskLayer3        = [CALayer layer];
        maskLayer3.frame           = view.bounds;
        maskLayer3.contents        = (id)[UIImage imageNamed:@"xingxing"].CGImage;
        
        UIImage * image = [UIImage imageNamed:@"hehe"];
        
        UIImageView * view1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view1.frame = CGRectMake(50, 0, 44, 44);
        [cell addSubview:view1];
        
        UIImageView * view2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view2.frame = CGRectMake(100, 0, 44, 44);
        
        [cell addSubview:view2];
        
        UIImageView * view3= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view3.frame = CGRectMake(150, 0, 44, 44);
        
        [cell addSubview:view3];
        
        
        view1.layer.mask = maskLayer1;
        
        view2.layer.mask = maskLayer2;
        view3.layer.mask = maskLayer3;
        
    }
    
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

@end
