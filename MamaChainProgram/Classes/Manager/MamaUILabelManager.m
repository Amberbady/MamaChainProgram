//
//  MamaUILabelManager.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "MamaUILabelManager.h"

@implementation MamaUILabelManager

- (MamaUILabelManager *(^)(UIColor*))backgroundColor{
    return ^(UIColor *color){
        self->_label.backgroundColor = color;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGRect))frame{
    return ^(CGRect frame){
        self->_label.frame = frame;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGFloat))cornerRadius{
    return ^(CGFloat radius){
        self->_label.layer.cornerRadius = radius;
        return self;
    };
}

- (MamaUILabelManager *(^)(BOOL))clipsToBounds{
    return ^(BOOL clips){
        self->_label.clipsToBounds = clips;
        return self;
    };
}

- (MamaUILabelManager *(^)(UIColor*))borderColor{
    return ^(UIColor *color){
        self->_label.layer.borderColor = color.CGColor;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGFloat))borderWidth{
    return ^(CGFloat borderWidth){
        self->_label.layer.borderWidth = borderWidth;
        return self;
    };
}

- (MamaUILabelManager *(^)(BOOL))userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self->_label.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (MamaUILabelManager *(^)(NSInteger))tag{
    return ^(NSInteger tag){
        self->_label.tag = tag;
        return self;
    };
}

- (MamaUILabelManager *(^)(UIViewContentMode))contentMode{
    return ^(UIViewContentMode contentMode){
        self->_label.contentMode = contentMode;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGFloat))alpha{
    return ^(CGFloat alpha){
        self->_label.alpha = alpha;
        return self;
    };
}

- (MamaUILabelManager *(^)(BOOL))opaque{
    return ^(BOOL opaque){
        self->_label.opaque = opaque;
        return self;
    };
}

- (MamaUILabelManager *(^)(BOOL))clearsContextBeforeDrawing{
    return ^(BOOL clearsContextBeforeDrawing){
        self->_label.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (MamaUILabelManager *(^)(BOOL))hidden{
    return ^(BOOL hidden){
        self->_label.hidden = hidden;
        return self;
    };
}

- (MamaUILabelManager *(^)(id,SEL))addTapGestureWithTarget{
    return ^(id Self,SEL action){
        self->_label.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:Self action:action];
        [self->_label addGestureRecognizer:tapGesture];
        return self;
    };
}

- (MamaUILabelManager *(^)(CGRect))bounds{
    return ^(CGRect bounds){
        self->_label.bounds = bounds;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGAffineTransform))transform{
    return ^(CGAffineTransform transform){
        self->_label.transform = transform;
        return self;
    };
}

- (MamaUILabelManager *(^)(CATransform3D))transform3D{
    return ^(CATransform3D transform3D){
        self->_label.transform3D = transform3D;
        return self;
    };
}

- (MamaUILabelManager *(^)(UIColor*))shadowColor{
    return ^(UIColor *shadowColor){
        self->_label.layer.shadowColor = shadowColor.CGColor;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGSize))shadowOffset{
    return ^(CGSize shadowOffset){
        self->_label.layer.shadowOffset = shadowOffset;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGFloat))shadowRadius{
    return ^(CGFloat shadowRadius){
        self->_label.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGFloat))shadowOpacity{
    return ^(CGFloat shadowOpacity){
        self->_label.layer.shadowOpacity = shadowOpacity;
        return self;
    };
}


- (MamaUILabelManager *(^)(UIColor*))textColor{
    return ^(UIColor *textColor){
        self->_label.textColor = textColor;
        return self;
    };
}

- (MamaUILabelManager *(^)(NSString*))text{
    return ^(NSString *text){
        self->_label.text = text;
        return self;
    };
}

- (MamaUILabelManager *(^)(UIFont*))font{
    return ^(UIFont *font){
        self->_label.font = font;
        return self;
    };
}

- (MamaUILabelManager *(^)(NSTextAlignment))textAlignment{
    return ^(NSTextAlignment textAlignment){
        self->_label.textAlignment = textAlignment;
        return self;
    };
}

- (MamaUILabelManager *(^)(NSAttributedString *))attributedText{
    return ^(NSAttributedString *attributedText){
        self->_label.attributedText = attributedText;
        return self;
    };
}

- (MamaUILabelManager *(^)(CGFloat))numberOfLines{
    return ^(CGFloat numberOfLines){
        self->_label.numberOfLines = numberOfLines;
        return self;
    };
}

@end
