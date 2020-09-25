//
//  SecondViewController.m
//  ViewController生命周期
//
//  Created by 郭红乐 on 2020/9/24.
//  Copyright © 2020 无. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 200, 100, 40);
    [btn setTitle:@"返回" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(press2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"view2willappear");
}

- (void)viewWillDisappear:(BOOL)animated{
    NSLog(@"view2willDisAppear");
}

- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"view2alreadyappear");
}

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"view2alreadydisappear");
}

- (void) press2{
    NSLog(@"------- press back -------");
    [self dismissViewControllerAnimated:NO completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
