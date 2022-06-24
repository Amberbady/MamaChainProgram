//
//  MamaAttributedStringManager.h
//  MamaChainProgram
//
//  Created by liaoshen on 2021/4/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MamaAttributedStringManager : NSObject

@property (nonatomic, strong) NSMutableAttributedString *string;

- (MamaAttributedStringManager *(^)(CGFloat))wordsSpacing;
- (MamaAttributedStringManager *(^)(CGFloat,NSRange))wordsSpacingWithRange;
- (MamaAttributedStringManager *(^)(CGFloat))lineSpacing;
- (MamaAttributedStringManager *(^)(CGFloat,NSRange))lineSpacingWithRange;
- (MamaAttributedStringManager *(^)(NSLineBreakMode))lineBreakMode;
- (MamaAttributedStringManager *(^)(NSLineBreakMode,NSRange))lineBreakModeWithRange;
- (MamaAttributedStringManager *(^)(NSTextAlignment))alignment;
- (MamaAttributedStringManager *(^)(NSTextAlignment,NSRange))alignmentWithRange;
- (MamaAttributedStringManager *(^)(UIFont*))font;
- (MamaAttributedStringManager *(^)(UIFont*,NSRange))fontWithRange;
- (MamaAttributedStringManager *(^)(CGFloat))fontSize;
- (MamaAttributedStringManager *(^)(CGFloat,NSRange))fontSizeWithRange;
- (MamaAttributedStringManager *(^)(UIColor*))color;
- (MamaAttributedStringManager *(^)(UIColor*,NSRange))colorWithRange;
- (MamaAttributedStringManager *(^)(UIImage*,CGRect,NSUInteger))imageAndboundsWithLoc;
@end

NS_ASSUME_NONNULL_END
