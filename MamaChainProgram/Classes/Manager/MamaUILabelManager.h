//
//  MamaUILabelManager.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MamaUILabelManager : NSObject

@property (nonatomic, strong) UILabel *label;

- (MamaUILabelManager *(^)(UIColor*))backgroundColor;
- (MamaUILabelManager *(^)(CGRect))frame;
- (MamaUILabelManager *(^)(CGFloat))cornerRadius;
- (MamaUILabelManager *(^)(UIColor*))borderColor;
- (MamaUILabelManager *(^)(CGFloat))borderWidth;
- (MamaUILabelManager *(^)(BOOL))clipsToBounds;
- (MamaUILabelManager *(^)(BOOL))userInteractionEnabled;
- (MamaUILabelManager *(^)(NSInteger))tag;
- (MamaUILabelManager *(^)(UIViewContentMode))contentMode;
- (MamaUILabelManager *(^)(CGFloat))alpha;
- (MamaUILabelManager *(^)(BOOL))opaque;
- (MamaUILabelManager *(^)(BOOL))clearsContextBeforeDrawing;
- (MamaUILabelManager *(^)(BOOL))hidden;
- (MamaUILabelManager *(^)(id,SEL))addTapGestureWithTarget;
- (MamaUILabelManager *(^)(CGRect))bounds;
- (MamaUILabelManager *(^)(CGAffineTransform))transform;
- (MamaUILabelManager *(^)(CATransform3D))transform3D;
- (MamaUILabelManager *(^)(UIColor*))shadowColor;
- (MamaUILabelManager *(^)(CGSize))shadowOffset;
- (MamaUILabelManager *(^)(CGFloat))shadowRadius;
- (MamaUILabelManager *(^)(CGFloat))shadowOpacity;
- (MamaUILabelManager *(^)(UIColor*))textColor;
- (MamaUILabelManager *(^)(NSString*))text;
- (MamaUILabelManager *(^)(UIFont*))font;
- (MamaUILabelManager *(^)(NSTextAlignment))textAlignment;
- (MamaUILabelManager *(^)(NSAttributedString *))attributedText;
- (MamaUILabelManager *(^)(CGFloat))numberOfLines;
@end

NS_ASSUME_NONNULL_END
