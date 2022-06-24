//
//  UILabel+ChainProgram.m
//  demo2
//
//  Created by liaoshen on 2021/4/21.
//

#import "UILabel+ChainProgram.h"

@implementation UILabel (ChainProgram)

+ (UILabel *)LS_initUILabel:(void(^)(MamaUILabelManager *mgr))block{
    MamaUILabelManager *mgr = [[MamaUILabelManager alloc]init];
    mgr.label = [[UILabel alloc] init];
    block(mgr);
    return mgr.label;
}

@end
