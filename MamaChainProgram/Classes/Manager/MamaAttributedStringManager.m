//
//  MamaAttributedStringManager.m
//  MamaChainProgram
//
//  Created by liaoshen on 2021/4/24.
//

#import "MamaAttributedStringManager.h"
#import <CoreText/CoreText.h>

@interface MamaAttributedStringManager ();

@property (nonatomic, strong) NSMutableParagraphStyle *style;

@end

@implementation MamaAttributedStringManager

-(NSMutableParagraphStyle *)style{
    if (!_style) {
        _style = [[NSMutableParagraphStyle alloc]init];
    }
    return _style;
}

- (MamaAttributedStringManager *(^)(CGFloat))wordsSpacing{
    return ^(CGFloat wordsSpacing){
        if (wordsSpacing > 0) {
            NSRange range = NSMakeRange(0, self->_string.length);
            long number = wordsSpacing;
            CFNumberRef num = CFNumberCreate(kCFAllocatorDefault,kCFNumberSInt64Type,&number);
            [self->_string addAttribute:(id)kCTKernAttributeName value:(__bridge id)num range:range];
            CFRelease(num);
        }
        return self;
    };
}

- (MamaAttributedStringManager *(^)(CGFloat,NSRange))wordsSpacingWithRange{
    return ^(CGFloat wordsSpacing,NSRange range){
        if (wordsSpacing > 0) {
            long number = wordsSpacing;
            CFNumberRef num = CFNumberCreate(kCFAllocatorDefault,kCFNumberSInt64Type,&number);
            [self->_string addAttribute:(id)kCTKernAttributeName value:(__bridge id)num range:range];
            CFRelease(num);
        }
        return self;
    };
}


- (MamaAttributedStringManager *(^)(CGFloat))lineSpacing{
    return ^(CGFloat lineSpacing){
        NSRange range = NSMakeRange(0, self->_string.length);
        [self.style setLineSpacing:lineSpacing];
        [self->_string addAttribute:NSParagraphStyleAttributeName value:self->_style range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(CGFloat,NSRange))lineSpacingWithRange{
    return ^(CGFloat lineSpacing ,NSRange range){
        [self.style setLineSpacing:lineSpacing];
        [self->_string addAttribute:NSParagraphStyleAttributeName value:self->_style range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(NSLineBreakMode))lineBreakMode{
    return ^(NSLineBreakMode lineBreakMode){
        NSRange range = NSMakeRange(0, self->_string.length);
        self.style.lineBreakMode = lineBreakMode;
        [self->_string addAttribute:NSParagraphStyleAttributeName value:self->_style range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(NSLineBreakMode,NSRange))lineBreakModeWithRange{
    return ^(NSLineBreakMode lineBreakMode ,NSRange range){
        self.style.lineBreakMode = lineBreakMode;
        [self->_string addAttribute:NSParagraphStyleAttributeName value:self->_style range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(NSTextAlignment))alignment{
    return ^(NSTextAlignment alignment){
        NSRange range = NSMakeRange(0, self->_string.length);
        self.style.alignment = alignment;
        [self->_string addAttribute:NSParagraphStyleAttributeName value:self->_style range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(NSTextAlignment,NSRange))alignmentWithRange{
    return ^(NSTextAlignment alignment ,NSRange range){
        self.style.alignment = alignment;;
        [self->_string addAttribute:NSParagraphStyleAttributeName value:self->_style range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(UIFont*))font{
    return ^(UIFont* font){
        NSRange range = NSMakeRange(0, self->_string.length);
        [self->_string addAttribute:NSFontAttributeName value:font range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(UIFont*,NSRange))fontWithRange{
    return ^(UIFont* font,NSRange range){
        [self->_string addAttribute:NSFontAttributeName value:font range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(CGFloat))fontSize{
    return ^(CGFloat fontSize){
        NSRange range = NSMakeRange(0, self->_string.length);
        [self->_string addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize] range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(CGFloat,NSRange))fontSizeWithRange
{
    return ^(CGFloat fontSize,NSRange range){
        [self->_string addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:fontSize] range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(UIColor*))color{
    return ^(UIColor* color){
        NSRange range = NSMakeRange(0, self->_string.length);
        [self->_string addAttribute:NSForegroundColorAttributeName value:color range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(UIColor*,NSRange))colorWithRange{
    return ^(UIColor* color,NSRange range){
        [self->_string addAttribute:NSForegroundColorAttributeName value:color range:range];
        return self;
    };
}

- (MamaAttributedStringManager *(^)(UIImage*,CGRect,NSUInteger))imageAndboundsWithLoc{
    return ^(UIImage* image,CGRect bounds,NSUInteger location){
        NSTextAttachment *attchImage = [[NSTextAttachment alloc] init];
        attchImage.image = image;
        attchImage.bounds = bounds;
        NSAttributedString *stringImage = [NSAttributedString attributedStringWithAttachment:attchImage];
        [self->_string insertAttributedString:stringImage atIndex:location];
        return self;
    };
}

@end
