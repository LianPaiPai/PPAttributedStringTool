//
//  PPAttributedStringTool.m
//  PPAttributedStringTool
//
//  Created by 拍拍 on 2019/12/6.
//  Copyright © 2019 PaiPai Lian. All rights reserved.
//

#import "PPAttributedStringTool.h"

@interface PPAttributedStringTool ()
@property (nonatomic, strong) NSMutableAttributedString *attributedString;
@property (nonatomic, strong) NSAttributedString *currentString;
@end

@implementation PPAttributedStringTool

+ (NSAttributedString *)makeAttributedString:(void (^)(PPAttributedStringTool *attrStrTool))block{
    if (block) {
        PPAttributedStringTool *attrString = [[PPAttributedStringTool alloc]init];
        attrString.attributedString = [[NSMutableAttributedString alloc]init];
        block(attrString);
        return [attrString.attributedString copy];
    }
    return nil;
}

- (AttrString)addString{
    return ^(NSString *addString){
        self->_currentString = [[NSAttributedString alloc]initWithString:addString];
        [self->_attributedString insertAttributedString:[[NSAttributedString alloc] initWithString:addString] atIndex:self->_attributedString.length];
        return self;
    };
}

- (AttrFont)font{
    return ^(UIFont *font){
        NSRange strRange = {self->_attributedString.length - self->_currentString.length,self->_currentString.length};
        [self->_attributedString addAttribute:NSFontAttributeName value:font range:strRange];
        return self;
    };
}

- (AttrColor)color{
    return ^(UIColor *color){
        NSRange strRange = {self->_attributedString.length - self->_currentString.length,self->_currentString.length};
        [self->_attributedString addAttribute:NSForegroundColorAttributeName value:color range:strRange];
        return self;
    };
}

- (AttrImg)addImg{
    return ^(UIImage *addImg, CGRect frame){
        NSTextAttachment *attachment = [NSTextAttachment new];
        attachment.image = addImg;
        attachment.bounds = frame;
        self->_currentString = [NSAttributedString attributedStringWithAttachment:attachment];
        [self->_attributedString insertAttributedString:self->_currentString atIndex:self->_attributedString.length];
        return self;
    };
}


- (AttrUnderLine)underLine{
    return ^(UIColor *underLinecolor){
        NSRange strRange = {self->_attributedString.length - self->_currentString.length,self->_currentString.length};
        [self->_attributedString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:strRange];
        [self->_attributedString addAttribute:NSUnderlineColorAttributeName value:underLinecolor range:strRange];
        return self;
    };
}
@end
