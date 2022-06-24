//
//  UILabel+ChainProgram.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <UIKit/UIKit.h>
#import "MamaUILabelManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface UILabel (ChainProgram)

/**
 *    Creates a UILabel
 *
 *    @return    UILabel
 */
+ (UILabel *)LS_initUILabel:(void(^)(MamaUILabelManager *mgr))block;

@end

NS_ASSUME_NONNULL_END
