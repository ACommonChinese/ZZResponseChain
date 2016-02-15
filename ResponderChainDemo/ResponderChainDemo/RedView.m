//
//  RedView.m
//  ResponderChainDemo
//
//  Created by 刘威振 on 2/15/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//

#import "RedView.h"

@implementation RedView

- (UIResponder *)nextResponder {
    return nil;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    // [super touchesBegan:touches withEvent:event];
    
    UITouch *touch = [touches anyObject];
    touch.view.backgroundColor = [UIColor blackColor];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    return YES;
}

@end
