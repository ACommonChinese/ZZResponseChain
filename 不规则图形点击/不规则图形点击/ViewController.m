//
//  ViewController.m
//  不规则图形点击
//
//  Created by 刘威振 on 2/16/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//  https://github.com/ole/OBShapedButton

#import "ViewController.h"
#import "OBShapedButton.h"
#import "OBShapedButton+attachObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSArray *names = [[NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"China" ofType:@"plist"]] allValues];
    for (NSString *name in names) {
        OBShapedButton *shapeButton = [[OBShapedButton alloc] initWithFrame:CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.width+20)]; // OBShapeButton也支持用xib布局
        shapeButton.attachObject = name;
        NSLog(@"%@", shapeButton.attachObject);
        [self.view addSubview:shapeButton];
        [shapeButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [shapeButton setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
        // [btn setImage:[UIImage imageNamed:str] forState:UIControlStateNormal]; // OK
    }
}

- (void)buttonClick:(OBShapedButton *)button {
    NSLog(@"%@", button.attachObject);
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:button.attachObject message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

@end
