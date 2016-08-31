//
//  TwoController.m
//  DrawCircle
//
//  Created by 区振轩 on 16/8/18.
//  Copyright © 2016年 区振轩. All rights reserved.
//

#import "TwoController.h"

@interface TwoController ()<UITableViewDelegate,UITableViewDataSource>


@end

@implementation TwoController

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
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"twoCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"twoCell"];
        
        UILabel * num = [[UILabel alloc] initWithFrame:CGRectMake(300, 0, 20, 44)];
        num.text = @"2";
        [cell addSubview:num];
        
        UIImageView * view = [[UIImageView alloc] init];
        view.frame = CGRectMake(200, 0, 44, 44);
        [cell addSubview:view];
        
        UIImage * image = [UIImage imageNamed:@"hehe"];
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(44, 44), NO, 1.0);
        [[UIBezierPath bezierPathWithRoundedRect:view.bounds cornerRadius:22] addClip];
        [image drawInRect:view.bounds];
        view.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        
        
        
        UIImageView * view1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view1.frame = CGRectMake(50, 0, 44, 44);
        
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(44, 44), NO, 1.0);
        [[UIBezierPath bezierPathWithRoundedRect:view1.bounds cornerRadius:22] addClip];
        [image drawInRect:view1.bounds];
        view1.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        
        [cell addSubview:view1];
        
        UIImageView * view2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view2.frame = CGRectMake(100, 0, 44, 44);
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(44, 44), NO, 1.0);
        [[UIBezierPath bezierPathWithRoundedRect:view2.bounds cornerRadius:22] addClip];
        [image drawInRect:view2.bounds];
        view2.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        [cell addSubview:view2];
        
        UIImageView * view3= [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hehe"]];
        view3.frame = CGRectMake(150, 0, 44, 44);
        UIGraphicsBeginImageContextWithOptions(CGSizeMake(44, 44), NO, 1.0);
        [[UIBezierPath bezierPathWithRoundedRect:view3.bounds cornerRadius:22] addClip];
        [image drawInRect:view3.bounds];
        view3.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [cell addSubview:view3];
        
    }
    
    
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}



@end
