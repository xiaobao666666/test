//
//  UIDevice+A_addition.m
//  EmptyProj
//
//  Created by 肖家宝 on 2022/11/15.
//

#import "UIDevice+A_addition.h"

@implementation UIDevice (A_addition)
/// 顶部安全区高度
+ (CGFloat)B_safeDistanceTop {
    if (@available(iOS 13.0, *)) {
        NSSet *C_set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene *C_windowScene = [C_set anyObject];
        UIWindow *C_window = C_windowScene.windows.firstObject;
        return C_window.safeAreaInsets.top;
    } else if (@available(iOS 11.0, *)) {
        UIWindow *C_window = [UIApplication sharedApplication].windows.firstObject;
        return C_window.safeAreaInsets.top;
    }
    return 0;
}

/// 底部安全区高度
+ (CGFloat)B_safeDistanceBottom {
    if (@available(iOS 13.0, *)) {
        NSSet *C_set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene *C_windowScene = [C_set anyObject];
        UIWindow *C_window = C_windowScene.windows.firstObject;
        return C_window.safeAreaInsets.bottom;
    } else if (@available(iOS 11.0, *)) {
        UIWindow *C_window = [UIApplication sharedApplication].windows.firstObject;
        return C_window.safeAreaInsets.bottom;
    }
    return 0;
}


/// 顶部状态栏高度（包括安全区）
+ (CGFloat)B_statusBarHeight {
    if (@available(iOS 13.0, *)) {
        NSSet *C_set = [UIApplication sharedApplication].connectedScenes;
        UIWindowScene *C_windowScene = [C_set anyObject];
        UIStatusBarManager *C_statusBarManager = C_windowScene.statusBarManager;
        return C_statusBarManager.statusBarFrame.size.height;
    } else {
        return [UIApplication sharedApplication].statusBarFrame.size.height;
    }
}

/// 导航栏高度
+ (CGFloat)B_navigationBarHeight {
    return 44.0f;
}

/// 状态栏+导航栏的高度
+ (CGFloat)B_navigationFullHeight {
    return [UIDevice B_statusBarHeight] + [UIDevice B_navigationBarHeight];
}

/// 底部导航栏高度
+ (CGFloat)B_tabBarHeight {
    return 49.0f;
}

/// 底部导航栏高度（包括安全区）
+ (CGFloat)B_tabBarFullHeight {
    return [UIDevice B_tabBarHeight] + [UIDevice B_safeDistanceBottom];
}

@end
