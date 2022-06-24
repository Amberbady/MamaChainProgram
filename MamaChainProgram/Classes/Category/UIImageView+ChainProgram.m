//
//  UIImageView+ChainProgram.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "UIImageView+ChainProgram.h"

@implementation UIImageView (ChainProgram)

+ (UIImageView *)LS_initUIImageView:(void(^)(MamaUIImageViewManager *mgr))block{
    MamaUIImageViewManager *mgr = [[MamaUIImageViewManager alloc]init];
    mgr.imageView = [[UIImageView alloc] init];
    block(mgr);
    return mgr.imageView;
}

@end
