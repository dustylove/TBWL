//
//  UIView+EffectArea.h
//  TBWL
//
//  Created by 严凯 on 2019/4/29.
//  Copyright © 2019 严凯. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (EffectArea)
/**影响区域,正值表示向外扩张*/
@property(nonatomic, assign) UIEdgeInsets effectInsets;
@end

NS_ASSUME_NONNULL_END
