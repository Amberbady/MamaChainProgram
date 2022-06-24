//
//  MamaUIViewManager.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "MamaUIViewManager.h"

@implementation MamaUIViewManager

- (MamaUIViewManager *(^)(UIColor*))backgroundColor{
    return ^(UIColor *color){
        self->_view.backgroundColor = color;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGRect))frame{
    return ^(CGRect frame){
        self->_view.frame = frame;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGFloat))cornerRadius{
    return ^(CGFloat radius){
        self->_view.layer.cornerRadius = radius;
        return self;
    };
}

- (MamaUIViewManager *(^)(BOOL))clipsToBounds{
    return ^(BOOL clips){
        self->_view.clipsToBounds = clips;
        return self;
    };
}

- (MamaUIViewManager *(^)(UIColor*))borderColor{
    return ^(UIColor *color){
        self->_view.layer.borderColor = color.CGColor;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGFloat))borderWidth{
    return ^(CGFloat borderWidth){
        self->_view.layer.borderWidth = borderWidth;
        return self;
    };
}

- (MamaUIViewManager *(^)(BOOL))userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self->_view.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (MamaUIViewManager *(^)(NSInteger))tag{
    return ^(NSInteger tag){
        self->_view.tag = tag;
        return self;
    };
}

- (MamaUIViewManager *(^)(UIViewContentMode))contentMode{
    return ^(UIViewContentMode contentMode){
        self->_view.contentMode = contentMode;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGFloat))alpha{
    return ^(CGFloat alpha){
        self->_view.alpha = alpha;
        return self;
    };
}

- (MamaUIViewManager *(^)(BOOL))opaque{
    return ^(BOOL opaque){
        self->_view.opaque = opaque;
        return self;
    };
}

- (MamaUIViewManager *(^)(BOOL))clearsContextBeforeDrawing{
    return ^(BOOL clearsContextBeforeDrawing){
        self->_view.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (MamaUIViewManager *(^)(BOOL))hidden{
    return ^(BOOL hidden){
        self->_view.hidden = hidden;
        return self;
    };
}

- (MamaUIViewManager *(^)(id,SEL))addTapGestureWithTarget{
    return ^(id Self,SEL action){
        self->_view.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:Self action:action];
        [self->_view addGestureRecognizer:tapGesture];
        return self;
    };
}

- (MamaUIViewManager *(^)(CGRect))bounds{
    return ^(CGRect bounds){
        self->_view.bounds = bounds;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGAffineTransform))transform{
    return ^(CGAffineTransform transform){
        self->_view.transform = transform;
        return self;
    };
}

- (MamaUIViewManager *(^)(CATransform3D))transform3D{
    return ^(CATransform3D transform3D){
        self->_view.transform3D = transform3D;
        return self;
    };
}

- (MamaUIViewManager *(^)(UIColor*))shadowColor{
    return ^(UIColor *shadowColor){
        self->_view.layer.shadowColor = shadowColor.CGColor;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGSize))shadowOffset{
    return ^(CGSize shadowOffset){
        self->_view.layer.shadowOffset = shadowOffset;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGFloat))shadowRadius{
    return ^(CGFloat shadowRadius){
        self->_view.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (MamaUIViewManager *(^)(CGFloat))shadowOpacity{
    return ^(CGFloat shadowOpacity){
        self->_view.layer.shadowOpacity = shadowOpacity;
        return self;
    };
}


@end
