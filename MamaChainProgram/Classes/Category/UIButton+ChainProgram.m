//
//  UIButton+ChainProgram.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "UIButton+ChainProgram.h"

@implementation UIButton (ChainProgram)

+ (UIButton *)LS_initButton:(void(^)(MamaButtonManager *mgr))block{
    return [self LS_initButtonWith:UIButtonTypeCustom with:block];
}

+ (UIButton *)LS_initButtonWith:(UIButtonType)buttonType with:(void(^)(MamaButtonManager *mgr))block{
    MamaButtonManager *mgr = [[MamaButtonManager alloc]init];
    mgr.button = [UIButton buttonWithType:buttonType];
    block(mgr);
    return mgr.button;
}

@end
