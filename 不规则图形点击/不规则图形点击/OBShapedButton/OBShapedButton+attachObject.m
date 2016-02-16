//
//  OBShapedButton+attachObject.m
//  不规则图形点击
//
//  Created by 刘威振 on 2/16/16.
//  Copyright © 2016 LiuWeiZhen. All rights reserved.
//

#import "OBShapedButton+attachObject.h"
#import <objc/runtime.h>

@implementation OBShapedButton (attachObject)

- (void)setAttachObject:(id)attachObject {
    objc_setAssociatedObject(self, @selector(attachObject), attachObject, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)attachObject {
    return objc_getAssociatedObject(self, _cmd);
}

@end
