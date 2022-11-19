//
//  UIDevice+A_addition.h
//  EmptyProj
//
//  Created by 肖家宝 on 2022/11/15.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (A_addition)
/// 顶部安全区高度
+ (CGFloat)B_safeDistanceTop;

/// 底部安全区高度
+ (CGFloat)B_safeDistanceBottom;

/// 顶部状态栏高度（包括安全区）
+ (CGFloat)B_statusBarHeight;

/// 导航栏高度
+ (CGFloat)B_navigationBarHeight;

/// 状态栏+导航栏的高度
+ (CGFloat)B_navigationFullHeight;

/// 底部导航栏高度
+ (CGFloat)B_tabBarHeight;

/// 底部导航栏高度（包括安全区）
+ (CGFloat)B_tabBarFullHeight;

@end

NS_ASSUME_NONNULL_END
