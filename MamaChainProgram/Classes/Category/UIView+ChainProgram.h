//
//  UIView+ChainProgram.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <UIKit/UIKit.h>
#import "MamaUIViewManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIView (ChainProgram)

/**
 *    Creates a UIView
 *
 *    @return    UIView
 */
+ (UIView *)LS_initUIView:(void(^)(MamaUIViewManager *mgr))block;

@end

NS_ASSUME_NONNULL_END
