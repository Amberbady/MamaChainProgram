//
//  UIImage+ChainProgram.h
//  MamaChainProgram
//
//  Created by liaoshen on 2021/4/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ChainProgram)
+ (UIImage *(^)(NSString*))imageName;
@end

NS_ASSUME_NONNULL_END
