//
//  UIButton+ChainProgram.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <UIKit/UIKit.h>
#import "MamaButtonManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface UIButton (ChainProgram)

/**
 *    Creates a UIButton
 *
 *    @return    UIButton
 */
+ (UIButton *)LS_initButton:(void(^)(MamaButtonManager *mgr))block;

/**
 *    Creates a UIButton
 *
 *    @param    buttonType   button type
 *
 *    @return    UIButton
 */
+ (UIButton *)LS_initButtonWith:(UIButtonType)buttonType with:(void(^)(MamaButtonManager *mgr))block;

@end

NS_ASSUME_NONNULL_END
