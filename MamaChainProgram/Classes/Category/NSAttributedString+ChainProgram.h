//
//  NSAttributedString+ChainProgram.h
//  MamaChainProgram
//
//  Created by liaoshen on 2021/4/24.
//

#import <Foundation/Foundation.h>
#import "MamaAttributedStringManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface NSAttributedString (ChainProgram)

/**
 *    Creates a NSAttributedString
 *
 *    @return    NSAttributedString
 */
+ (NSAttributedString *)LS_initNSAttributedStringWithText:(NSString *)text manager:(void(^)(MamaAttributedStringManager *mgr))block;

@end

NS_ASSUME_NONNULL_END
