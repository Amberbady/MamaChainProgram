//
//  MamaUIImageViewManager.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "MamaUIImageViewManager.h"

@implementation MamaUIImageViewManager

- (MamaUIImageViewManager *(^)(UIColor*))backgroundColor{
    return ^(UIColor *color){
        self->_imageView.backgroundColor = color;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGRect))frame{
    return ^(CGRect frame){
        self->_imageView.frame = frame;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(NSString*))imageName{
    return ^(NSString *imageName){
        [self->_imageView setImage:[UIImage imageNamed:imageName]];
        return self;
    };
}

- (MamaUIImageViewManager *(^)(UIImage*))image{
    return ^(UIImage *image){
        [self->_imageView setImage:image];
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGFloat))cornerRadius{
    return ^(CGFloat radius){
        self->_imageView.layer.cornerRadius = radius;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(BOOL))clipsToBounds{
    return ^(BOOL clips){
        self->_imageView.clipsToBounds = clips;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(UIColor*))borderColor{
    return ^(UIColor *color){
        self->_imageView.layer.borderColor = color.CGColor;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGFloat))borderWidth{
    return ^(CGFloat borderWidth){
        self->_imageView.layer.borderWidth = borderWidth;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(BOOL))userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self->_imageView.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(NSInteger))tag{
    return ^(NSInteger tag){
        self->_imageView.tag = tag;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(UIViewContentMode))contentMode{
    return ^(UIViewContentMode contentMode){
        self->_imageView.contentMode = contentMode;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGFloat))alpha{
    return ^(CGFloat alpha){
        self->_imageView.alpha = alpha;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(BOOL))opaque{
    return ^(BOOL opaque){
        self->_imageView.opaque = opaque;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(BOOL))clearsContextBeforeDrawing{
    return ^(BOOL clearsContextBeforeDrawing){
        self->_imageView.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(BOOL))hidden{
    return ^(BOOL hidden){
        self->_imageView.hidden = hidden;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(id,SEL))addTapGestureWithTarget{
    return ^(id Self,SEL action){
        self->_imageView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:Self action:action];
        [self->_imageView addGestureRecognizer:tapGesture];
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGRect))bounds{
    return ^(CGRect bounds){
        self->_imageView.bounds = bounds;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGAffineTransform))transform{
    return ^(CGAffineTransform transform){
        self->_imageView.transform = transform;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CATransform3D))transform3D{
    return ^(CATransform3D transform3D){
        self->_imageView.transform3D = transform3D;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(UIColor*))shadowColor{
    return ^(UIColor *shadowColor){
        self->_imageView.layer.shadowColor = shadowColor.CGColor;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGSize))shadowOffset{
    return ^(CGSize shadowOffset){
        self->_imageView.layer.shadowOffset = shadowOffset;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGFloat))shadowRadius{
    return ^(CGFloat shadowRadius){
        self->_imageView.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (MamaUIImageViewManager *(^)(CGFloat))shadowOpacity{
    return ^(CGFloat shadowOpacity){
        self->_imageView.layer.shadowOpacity = shadowOpacity;
        return self;
    };
}

@end
