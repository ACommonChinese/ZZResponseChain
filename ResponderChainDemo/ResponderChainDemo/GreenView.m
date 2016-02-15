//
//  GreenView.m
//  ResponderChainDemo
//
//  Created by 刘威振 on 2/15/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//

#import "GreenView.h"

@implementation GreenView

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//    [super touchesBegan:touches withEvent:event];
//
//    UITouch *touch = [touches anyObject];
//    // touch.view.backgroundColor = [UIColor whiteColor];
//}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    return NO;
}

@end
