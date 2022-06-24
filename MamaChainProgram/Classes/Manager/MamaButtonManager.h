//
//  MamaButtonManager.h
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface MamaButtonManager : NSObject
@property (nonatomic, strong) UIButton *button;
- (MamaButtonManager *(^)(UIColor*))backgroundColor;
- (MamaButtonManager *(^)(CGRect))frame;
- (MamaButtonManager *(^)(NSString*))imageName;
- (MamaButtonManager *(^)(NSString* ,UIControlState))imageNameForState;
- (MamaButtonManager *(^)(NSString*))backgroundImageName;
- (MamaButtonManager *(^)(NSString* ,UIControlState))backgroundImageNameForState;
- (MamaButtonManager *(^)(UIImage*))image;
- (MamaButtonManager *(^)(UIImage* ,UIControlState))imageForState;
- (MamaButtonManager *(^)(UIImage*))backgroundImage;
- (MamaButtonManager *(^)(UIImage* ,UIControlState))backgroundImageForState;
- (MamaButtonManager *(^)(UIColor*))titleColor;
- (MamaButtonManager *(^)(UIColor* ,UIControlState))titleColorForState;
- (MamaButtonManager *(^)(NSString*))title;
- (MamaButtonManager *(^)(UIFont*))font;
- (MamaButtonManager *(^)(NSTextAlignment))textAlignment;
- (MamaButtonManager *(^)(NSString* ,UIControlState))titleForState;
- (MamaButtonManager *(^)(id,SEL,UIControlEvents))addTargetActionforEvents;
- (MamaButtonManager *(^)(CGFloat))cornerRadius;
- (MamaButtonManager *(^)(UIColor*))borderColor;
- (MamaButtonManager *(^)(CGFloat))borderWidth;
- (MamaButtonManager *(^)(BOOL))clipsToBounds;
- (MamaButtonManager *(^)(BOOL))userInteractionEnabled;
- (MamaButtonManager *(^)(BOOL))enabled;
- (MamaButtonManager *(^)(UIColor*))tintColor;
- (MamaButtonManager *(^)(UIEdgeInsets))contentEdgeInsets;
- (MamaButtonManager *(^)(UIEdgeInsets))titleEdgeInsets;
- (MamaButtonManager *(^)(UIEdgeInsets))imageEdgeInsets;
- (MamaButtonManager *(^)(BOOL))reversesTitleShadowWhenHighlighted;
- (MamaButtonManager *(^)(BOOL))adjustsImageWhenHighlighted;
- (MamaButtonManager *(^)(BOOL))adjustsImageWhenDisabled;
- (MamaButtonManager *(^)(BOOL))showsTouchWhenHighlighted;
- (MamaButtonManager *(^)(NSInteger))tag;
- (MamaButtonManager *(^)(CGFloat))alpha;
- (MamaButtonManager *(^)(BOOL))opaque;
- (MamaButtonManager *(^)(BOOL))clearsContextBeforeDrawing;
- (MamaButtonManager *(^)(BOOL))hidden;
- (MamaButtonManager *(^)(BOOL))selected;
- (MamaButtonManager *(^)(CGRect))bounds;
- (MamaButtonManager *(^)(CGAffineTransform))transform;
- (MamaButtonManager *(^)(CATransform3D))transform3D;
- (MamaButtonManager *(^)(UIColor*))shadowColor;
- (MamaButtonManager *(^)(CGSize))shadowOffset;
- (MamaButtonManager *(^)(CGFloat))shadowRadius;
- (MamaButtonManager *(^)(CGFloat))shadowOpacity;
@end

NS_ASSUME_NONNULL_END
