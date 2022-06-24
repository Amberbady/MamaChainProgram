//
//  UIImageView+ChainProgram.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <UIKit/UIKit.h>
#import "MamaUIImageViewManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (ChainProgram)

/**
 *    Creates a UIImageView
 *
 *    @return    UIImageView
 */
+ (UIImageView *)LS_initUIImageView:(void(^)(MamaUIImageViewManager *mgr))block;

@end

NS_ASSUME_NONNULL_END
