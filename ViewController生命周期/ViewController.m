//
//  ViewController.m
//  ViewController生命周期
//
//  Created by 郭红乐 on 2020/9/22.
//  Copyright © 2020 无. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"viewDidLoad");
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:btn];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    btn.frame = CGRectMake(200, 200, 100, 40);
    [btn addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    
}

//gray当view调用完load之后，在显示屏幕之前调用这个方法
- (void) viewWillAppear:(BOOL)animated
{
    _gray = [[UIView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_gray];
    _gray.backgroundColor = [UIColor yellowColor];
    NSLog(@"graywillAppear");
}


//blue 在view已经在屏幕上显现之后，调用这个方法
- (void) viewDidAppear:(BOOL)animated
{
    _blue = [[UIView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_blue];
    _blue.backgroundColor = [UIColor blueColor];
    NSLog(@"blueViewDidAppear");
}

//red 当view将要从屏幕上移除时
- (void)viewWillDisappear:(BOOL)animated {
    _red = [[UIView alloc] initWithFrame:CGRectMake(0, 300, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height / 1.5)];
    [self.view addSubview:_red];
    _red.backgroundColor = [UIColor redColor];
    NSLog(@"redViewWillDisappear");
}

//orange 当view已经从屏幕上移除时
- (void) viewDidDisappear:(BOOL)animated
{
    _orange = [[UIView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_orange];
    _orange.backgroundColor = [UIColor orangeColor];
    NSLog(@"orangeDidDisappear");
}

- (void)viewDidLayoutSubviews {
    _purper = [[UIView alloc] initWithFrame:CGRectMake(0,300, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_purper];
    _purper.backgroundColor = [UIColor purpleColor];
    NSLog(@"purpleviewDidLayoutSubviews");
}

- (void)viewWillLayoutSubviews{
    _yellow =[[UIView alloc] initWithFrame:CGRectMake(0,300, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:_yellow];
    _yellow.backgroundColor = [UIColor yellowColor];
    NSLog(@"yellowviewWillLayoutSubviews");
}

- (void) loadView{
    [super loadView];//要调用父类
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 99, 99)];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    NSLog(@"loadview");
}

-(void) press
{
    NSLog(@"------ press button ------");
    SecondViewController *second = [[SecondViewController alloc]init];
    second.view.backgroundColor = [UIColor yellowColor];
    second.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:second animated:NO completion:nil];
}

@end
