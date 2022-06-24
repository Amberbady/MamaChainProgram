//
//  NSAttributedString+ChainProgram.m
//  MamaChainProgram
//
//  Created by liaoshen on 2021/4/24.
//

#import "NSAttributedString+ChainProgram.h"

@implementation NSAttributedString (ChainProgram)

/**
 *    Creates a NSAttributedString
 *
 *    @return    NSAttributedString
 */
+ (NSAttributedString *)LS_initNSAttributedStringWithText:(NSString *)text manager:(void(^)(MamaAttributedStringManager *mgr))block{
    MamaAttributedStringManager *mgr = [[MamaAttributedStringManager alloc]init];
    mgr.string = [[NSMutableAttributedString alloc] initWithString:text];
    block(mgr);
    return mgr.string;
}

@end
