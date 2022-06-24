//
//  MamaUIImageViewManager.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MamaUIImageViewManager : NSObject

@property (nonatomic, strong) UIImageView *imageView;

- (MamaUIImageViewManager *(^)(UIColor*))backgroundColor;
- (MamaUIImageViewManager *(^)(CGRect))frame;
- (MamaUIImageViewManager *(^)(NSString*))imageName;
- (MamaUIImageViewManager *(^)(UIImage*))image;
- (MamaUIImageViewManager *(^)(CGFloat))cornerRadius;
- (MamaUIImageViewManager *(^)(UIColor*))borderColor;
- (MamaUIImageViewManager *(^)(CGFloat))borderWidth;
- (MamaUIImageViewManager *(^)(BOOL))clipsToBounds;
- (MamaUIImageViewManager *(^)(BOOL))userInteractionEnabled;
- (MamaUIImageViewManager *(^)(NSInteger))tag;
- (MamaUIImageViewManager *(^)(UIViewContentMode))contentMode;
- (MamaUIImageViewManager *(^)(CGFloat))alpha;
- (MamaUIImageViewManager *(^)(BOOL))opaque;
- (MamaUIImageViewManager *(^)(BOOL))clearsContextBeforeDrawing;
- (MamaUIImageViewManager *(^)(BOOL))hidden;
- (MamaUIImageViewManager *(^)(id,SEL))addTapGestureWithTarget;
- (MamaUIImageViewManager *(^)(CGRect))bounds;
- (MamaUIImageViewManager *(^)(CGAffineTransform))transform;
- (MamaUIImageViewManager *(^)(CATransform3D))transform3D;
- (MamaUIImageViewManager *(^)(UIColor*))shadowColor;
- (MamaUIImageViewManager *(^)(CGSize))shadowOffset;
- (MamaUIImageViewManager *(^)(CGFloat))shadowRadius;
- (MamaUIImageViewManager *(^)(CGFloat))shadowOpacity;

@end

NS_ASSUME_NONNULL_END
