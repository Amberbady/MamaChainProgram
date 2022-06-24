//
//  MamaButtonManager.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "MamaButtonManager.h"

@implementation MamaButtonManager

- (MamaButtonManager *(^)(UIColor*))backgroundColor{
    return ^(UIColor *color){
        self->_button.backgroundColor = color;
        return self;
    };
}

- (MamaButtonManager *(^)(CGRect))frame{
    return ^(CGRect frame){
        self->_button.frame = frame;
        return self;
    };
}

- (MamaButtonManager *(^)(NSString*))imageName{
    return ^(NSString *imageName){
        [self->_button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        return self;
    };
}

- (MamaButtonManager *(^)(NSString* ,UIControlState))imageNameForState{
    return ^(NSString *imageName,UIControlState state){
        [self->_button setImage:[UIImage imageNamed:imageName] forState:state];
        return self;
    };
}

- (MamaButtonManager *(^)(NSString*))backgroundImageName{
    return ^(NSString *imageName){
        [self->_button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        return self;
    };
}

- (MamaButtonManager *(^)(NSString* ,UIControlState))backgroundImageNameForState{
    return ^(NSString *imageName,UIControlState state){
        [self->_button setBackgroundImage:[UIImage imageNamed:imageName] forState:state];
        return self;
    };
}

- (MamaButtonManager *(^)(UIImage*))image{
    return ^(UIImage *image){
        [self->_button setImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (MamaButtonManager *(^)(UIImage* ,UIControlState))imageForState{
    return ^(UIImage *image,UIControlState state){
        [self->_button setImage:image forState:state];
        return self;
    };
}

- (MamaButtonManager *(^)(UIImage*))backgroundImage{
    return ^(UIImage *image){
        [self->_button setBackgroundImage:image forState:UIControlStateNormal];
        return self;
    };
}

- (MamaButtonManager *(^)(UIImage* ,UIControlState))backgroundImageForState{
    return ^(UIImage *image,UIControlState state){
        [self->_button setBackgroundImage:image forState:state];
        return self;
    };
}

- (MamaButtonManager *(^)(UIColor*))titleColor{
    return ^(UIColor *color){
        [self->_button setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

- (MamaButtonManager *(^)(UIColor* ,UIControlState))titleColorForState{
    return ^(UIColor *color,UIControlState state){
        [self->_button setTitleColor:color forState:state];
        return self;
    };
}

- (MamaButtonManager *(^)(NSString*))title{
    return ^(NSString *title){
        [self->_button setTitle:title forState:UIControlStateNormal];
        return self;
    };
}

- (MamaButtonManager *(^)(NSString* ,UIControlState))titleForState{
    return ^(NSString *title,UIControlState state){
        [self->_button setTitle:title forState:state];
        return self;
    };
}

- (MamaButtonManager *(^)(UIFont*))font{
    return ^(UIFont *font){
        self->_button.titleLabel.font = font;
        return self;
    };
}

- (MamaButtonManager *(^)(id,SEL,UIControlEvents))addTargetActionforEvents{
    return ^(id Self,SEL select,UIControlEvents event){
        [self->_button addTarget:Self action:select forControlEvents:event];
        return self;
    };
}

- (MamaButtonManager *(^)(CGFloat))cornerRadius{
    return ^(CGFloat radius){
        self->_button.layer.cornerRadius = radius;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))clipsToBounds{
    return ^(BOOL clips){
        self->_button.clipsToBounds = clips;
        return self;
    };
}

- (MamaButtonManager *(^)(UIColor*))borderColor{
    return ^(UIColor *color){
        self->_button.layer.borderColor = color.CGColor;
        return self;
    };
}

- (MamaButtonManager *(^)(CGFloat))borderWidth{
    return ^(CGFloat borderWidth){
        self->_button.layer.borderWidth = borderWidth;
        return self;
    };
}

- (MamaButtonManager *(^)(NSTextAlignment))textAlignment{
    return ^(NSTextAlignment textAlignment){
        self->_button.titleLabel.textAlignment = textAlignment;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self->_button.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))enabled{
    return ^(BOOL enabled){
        self->_button.enabled = enabled;
        return self;
    };
}

- (MamaButtonManager *(^)(UIColor*))tintColor{
    return ^(UIColor *tintColor){
        [self->_button setTintColor:tintColor];
        return self;
    };
}

- (MamaButtonManager *(^)(UIEdgeInsets))contentEdgeInsets{
    return ^(UIEdgeInsets contentEdgeInsets){
        self->_button.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

- (MamaButtonManager *(^)(UIEdgeInsets))titleEdgeInsets{
    return ^(UIEdgeInsets titleEdgeInsets){
        self->_button.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

- (MamaButtonManager *(^)(UIEdgeInsets))imageEdgeInsets{
    return ^(UIEdgeInsets imageEdgeInsets){
        self->_button.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))reversesTitleShadowWhenHighlighted{
    return ^(BOOL reversesTitleShadowWhenHighlighted){
        self->_button.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))adjustsImageWhenHighlighted{
    return ^(BOOL adjustsImageWhenHighlighted){
        self->_button.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))adjustsImageWhenDisabled{
    return ^(BOOL adjustsImageWhenDisabled){
        self->_button.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))showsTouchWhenHighlighted{
    return ^(BOOL showsTouchWhenHighlighted){
        self->_button.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}

- (MamaButtonManager *(^)(NSInteger))tag{
    return ^(NSInteger tag){
        self->_button.tag = tag;
        return self;
    };
}

- (MamaButtonManager *(^)(CGFloat))alpha{
    return ^(CGFloat alpha){
        self->_button.alpha = alpha;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))opaque{
    return ^(BOOL opaque){
        self->_button.opaque = opaque;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))clearsContextBeforeDrawing{
    return ^(BOOL clearsContextBeforeDrawing){
        self->_button.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))hidden{
    return ^(BOOL hidden){
        self->_button.hidden = hidden;
        return self;
    };
}

- (MamaButtonManager *(^)(BOOL))selected{
    return ^(BOOL selected){
        self->_button.selected = selected;
        return self;
    };
}


- (MamaButtonManager *(^)(CGRect))bounds{
    return ^(CGRect bounds){
        self->_button.bounds = bounds;
        return self;
    };
}

- (MamaButtonManager *(^)(CGAffineTransform))transform{
    return ^(CGAffineTransform transform){
        self->_button.transform = transform;
        return self;
    };
}

- (MamaButtonManager *(^)(CATransform3D))transform3D{
    return ^(CATransform3D transform3D){
        self->_button.transform3D = transform3D;
        return self;
    };
}

- (MamaButtonManager *(^)(UIColor*))shadowColor{
    return ^(UIColor *shadowColor){
        self->_button.layer.shadowColor = shadowColor.CGColor;
        return self;
    };
}

- (MamaButtonManager *(^)(CGSize))shadowOffset{
    return ^(CGSize shadowOffset){
        self->_button.layer.shadowOffset = shadowOffset;
        return self;
    };
}

- (MamaButtonManager *(^)(CGFloat))shadowRadius{
    return ^(CGFloat shadowRadius){
        self->_button.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (MamaButtonManager *(^)(CGFloat))shadowOpacity{
    return ^(CGFloat shadowOpacity){
        self->_button.layer.shadowOpacity = shadowOpacity;
        return self;
    };
}


@end
