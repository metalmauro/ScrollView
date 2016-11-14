//
//  ViewController.m
//  ScrollView
//
//  Created by Matthew Mauro on 2016-11-14.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//
#import "MyScrollView.h"
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) MyScrollView *bottomView;
@property (weak, nonatomic) UIView *redView;
@property (weak, nonatomic) UIView *yellowView;
@property (weak, nonatomic) UIView *greenView;
@property (weak, nonatomic) UIView *blueView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // view set to frame of ViewController
    CGRect frame = self.view.frame;
    MyScrollView *base = [[MyScrollView alloc]initWithFrame:frame];
    base.translatesAutoresizingMaskIntoConstraints = NO;
    base.userInteractionEnabled = YES;
    [self.view addSubview:base];
    self.bottomView = base;
    
    //redView box
    UIView *red = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 100, 100)];
    red.translatesAutoresizingMaskIntoConstraints = NO;
    red.backgroundColor = [UIColor redColor];
    [self.bottomView addSubview:red];
    self.redView = red;
    
    //greenView box
    UIView *green = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 150, 200)];
    green.translatesAutoresizingMaskIntoConstraints = NO;
    green.backgroundColor = [UIColor greenColor];
    [self.bottomView addSubview:green];
    self.greenView = green;
    
    //blueView box
    UIView *blue = [[UIView alloc]initWithFrame:CGRectMake(40, 400, 200, 150)];
    blue.translatesAutoresizingMaskIntoConstraints = NO;
    blue.backgroundColor = [UIColor blueColor];
    [self.bottomView addSubview:blue];
    self.blueView = blue;
    
    //yellowView box
    UIView *yellow = [[UIView alloc]initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellow.translatesAutoresizingMaskIntoConstraints = NO;
    yellow.backgroundColor = [UIColor yellowColor];
    [self.bottomView addSubview:yellow];
    self.yellowView = yellow;
    
    float sizeOfContent = 0;
    UIView *lLast = [self.bottomView.subviews lastObject];
    NSInteger wd = lLast.frame.origin.y;
    NSInteger ht = lLast.frame.size.height;
    
    sizeOfContent = wd+ht;
    
    self.bottomView.contentSize = CGSizeMake(self.bottomView.frame.size.width, sizeOfContent);
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
