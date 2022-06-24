//
//  UIView+ChainProgram.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "UIView+ChainProgram.h"

@implementation UIView (ChainProgram)

+ (UIView *)LS_initUIView:(void(^)(MamaUIViewManager *mgr))block{
    MamaUIViewManager *mgr = [[MamaUIViewManager alloc]init];
    mgr.view = [[UIView alloc] init];
    block(mgr);
    return mgr.view;
}

@end
