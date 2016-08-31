//
//  ViewController.m
//  DrawCircle
//
//  Created by 区振轩 on 16/8/18.
//  Copyright © 2016年 区振轩. All rights reserved.
//

#import "ViewController.h"

#import "OneController.h"
#import "TwoController.h"
#import "ThreeController.h"
#import "FourController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [self.view viewWithTag:100];
    [btn addTarget:self action:@selector(drawRectAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * btn1 = [self.view viewWithTag:101];
    [btn1 addTarget:self action:@selector(begAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * btn2 = [self.view viewWithTag:102];
    [btn2 addTarget:self action:@selector(layerAction:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * btn3 = [self.view viewWithTag:103];
    [btn3 addTarget:self action:@selector(maskAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
}

-(void) drawRectAction:(id)sender{
    
    OneController * vc = [[OneController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void) begAction:(id)sender{
    
    TwoController * vc = [[TwoController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void) layerAction:(id)sender{
    
    ThreeController * vc = [[ThreeController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

-(void) maskAction:(id)sender{
    
    FourController * vc = [[FourController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
