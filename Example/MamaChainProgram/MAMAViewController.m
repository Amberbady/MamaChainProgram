//
//  MAMAViewController.m
//  MamaChainProgram
//
//  Created by 13690039192@163.com on 04/21/2021.
//  Copyright (c) 2021 13690039192@163.com. All rights reserved.
//

#import "MAMAViewController.h"
#import "UIButton+ChainProgram.h"
#import "UIImageView+ChainProgram.h"
#import "UIView+ChainProgram.h"
#import "UILabel+ChainProgram.h"
#import "NSAttributedString+ChainProgram.h"
#import "UIImage+ChainProgram.h"
@interface MAMAViewController ()
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIView *bgview;
@end

@implementation MAMAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.bgview = [UIView LS_initUIView:^(MamaUIViewManager * _Nonnull mgr) {
       mgr.frame(CGRectMake(200, 100, 100, 100))
        .backgroundColor(UIColor.grayColor)
        .cornerRadius(50)
        .clipsToBounds(YES);
    }];
    
    [self.view addSubview:self.bgview];
    
    self.label = [UILabel LS_initUILabel:^(MamaUILabelManager * _Nonnull mgr) {
       mgr.frame(CGRectMake(100, 350, 200, 150))
        .text(@"链式编程")
        .textAlignment(NSTextAlignmentCenter)
        .numberOfLines(0)
        .textColor(UIColor.redColor);

    }];
    [self.view addSubview:self.label];
    
    [self.view addSubview:self.button];
    
    
    self.imageView = [UIImageView LS_initUIImageView:^(MamaUIImageViewManager * _Nonnull mgr) {
       mgr.frame(CGRectMake(100, 300, 100, 100))
        .imageName(@"ico_shopping")
        .hidden(YES)
        .contentMode(UIViewContentModeScaleAspectFill);

    }];
    [self.view addSubview:self.imageView];
    
    self.label.attributedText = [NSAttributedString LS_initNSAttributedStringWithText:@"链式编程链式编程链式编程链式编程链式编程链式编程链式编程链式编程" manager:^(MamaAttributedStringManager * _Nonnull mgr) {
        mgr.lineSpacing(6)
        .wordsSpacing(10)
        .fontSize(25)
        .imageAndboundsWithLoc(UIImage.imageName(@"ico_shopping"),CGRectMake(0, -2, 49, 20),0)
        .colorWithRange(UIColor.blueColor,NSMakeRange(0, 10));
    }];
}

- (void)touchBtn:(UIButton *)sender{
    sender.selected = !sender.selected;
    if (sender.selected) {
        self.imageView.hidden = NO;
    }else{
        self.imageView.hidden = YES;
    }

}

-(UIButton *)button{
    if (!_button) {
        _button = [UIButton LS_initButton:^(MamaButtonManager * _Nonnull mgr) {
            mgr.backgroundColor(UIColor.clearColor)
            .frame(CGRectMake(100, 100, 100, 100))
            .imageName(@"")
            .backgroundImageName(@"ico_delete")
            .title(@"链式编程")
            .font([UIFont systemFontOfSize:18.0])
            .titleColor(UIColor.blackColor)
            .addTargetActionforEvents(self,@selector(touchBtn:),UIControlEventTouchUpInside);
        }];
    }
    return _button;
}

@end

