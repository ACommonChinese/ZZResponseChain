//
//  ViewController.m
//  ResponderChainDemo
//
//  Created by 刘威振 on 2/15/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//

#import "ViewController.h"
#import "RedView.h"
#import "GreenView.h"
#import "BlueView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RedView *redView = [[RedView alloc] initWithFrame:CGRectMake(10, 10, 350, 400)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    GreenView *greenView = [[GreenView alloc] initWithFrame:CGRectMake(10, 10, 200, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [redView addSubview:greenView];
    
    BlueView *blueView = [[BlueView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    blueView.userInteractionEnabled = NO;
    blueView.backgroundColor = [UIColor blueColor];
    [greenView addSubview:blueView];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    self.view.backgroundColor = [UIColor blackColor];
}

@end
