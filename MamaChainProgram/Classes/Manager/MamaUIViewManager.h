//
//  MamaUIViewManager.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MamaUIViewManager : NSObject

@property (nonatomic, strong) UIView *view;

- (MamaUIViewManager *(^)(UIColor*))backgroundColor;
- (MamaUIViewManager *(^)(CGRect))frame;
- (MamaUIViewManager *(^)(CGFloat))cornerRadius;
- (MamaUIViewManager *(^)(UIColor*))borderColor;
- (MamaUIViewManager *(^)(CGFloat))borderWidth;
- (MamaUIViewManager *(^)(BOOL))clipsToBounds;
- (MamaUIViewManager *(^)(BOOL))userInteractionEnabled;
- (MamaUIViewManager *(^)(NSInteger))tag;
- (MamaUIViewManager *(^)(UIViewContentMode))contentMode;
- (MamaUIViewManager *(^)(CGFloat))alpha;
- (MamaUIViewManager *(^)(BOOL))opaque;
- (MamaUIViewManager *(^)(BOOL))clearsContextBeforeDrawing;
- (MamaUIViewManager *(^)(BOOL))hidden;
- (MamaUIViewManager *(^)(id,SEL))addTapGestureWithTarget;
- (MamaUIViewManager *(^)(CGRect))bounds;
- (MamaUIViewManager *(^)(CGAffineTransform))transform;
- (MamaUIViewManager *(^)(CATransform3D))transform3D;
- (MamaUIViewManager *(^)(UIColor*))shadowColor;
- (MamaUIViewManager *(^)(CGSize))shadowOffset;
- (MamaUIViewManager *(^)(CGFloat))shadowRadius;
- (MamaUIViewManager *(^)(CGFloat))shadowOpacity;

@end

NS_ASSUME_NONNULL_END
