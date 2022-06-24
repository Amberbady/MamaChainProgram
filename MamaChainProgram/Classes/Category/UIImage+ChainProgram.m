//
//  UIImage+ChainProgram.m
//  MamaChainProgram
//
//  Created by liaoshen on 2021/4/24.
//

#import "UIImage+ChainProgram.h"

@implementation UIImage (ChainProgram)
    
+ (UIImage *(^)(NSString*))imageName{
    return ^(NSString *name){
        return [UIImage imageNamed:name];
    };
}

@end
