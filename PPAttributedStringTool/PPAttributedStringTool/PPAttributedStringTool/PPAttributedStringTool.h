//
//  PPAttributedStringTool.h
//  PPAttributedStringTool
//
//  Created by 拍拍 on 2019/12/6.
//  Copyright © 2019 PaiPai Lian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PPAttributedStringTool : NSObject


+ (NSAttributedString *)makeAttributedString:(void (^)(PPAttributedStringTool *attrStrTool))block;

typedef PPAttributedStringTool *(^AttrString)(NSString *addString);
@property (nonatomic, strong, readonly) AttrString addString;

typedef PPAttributedStringTool *(^AttrFont)(UIFont *font);
@property (nonatomic, strong, readonly) AttrFont font;

typedef PPAttributedStringTool *(^AttrColor)(UIColor *textColor);
@property (nonatomic, strong, readonly) AttrColor color;

typedef PPAttributedStringTool *(^AttrUnderLine)(UIColor *underLinecolor);
@property (nonatomic, strong, readonly) AttrUnderLine underLine;

typedef PPAttributedStringTool *(^AttrImg)(UIImage *addImg, CGRect frame);
@property (nonatomic, strong, readonly) AttrImg addImg;


@end

