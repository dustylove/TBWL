//
//  UIView+EffectArea.m
//  TBWL
//
//  Created by 严凯 on 2019/4/29.
//  Copyright © 2019 严凯. All rights reserved.
//

#import "UIView+EffectArea.h"
#import <objc/runtime.h>
@implementation UIView (EffectArea)
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    if( !self.userInteractionEnabled || self.hidden || self.alpha <= 0.01 ) {
        return NO;
    }else{
        return CGRectContainsPoint(UIEdgeInsetsInsetRect( self.bounds, UIEdgeInsetsMake(-self.effectInsets.top, -self.effectInsets.left, -self.effectInsets.bottom, -self.effectInsets.right)), point);
    }
}

- (void)setEffectInsets:(UIEdgeInsets)effectInsets{
    objc_setAssociatedObject(self, @selector(effectInsets), [NSValue valueWithUIEdgeInsets:effectInsets], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIEdgeInsets)effectInsets{
    return [objc_getAssociatedObject(self, _cmd) UIEdgeInsetsValue];
}
@end
