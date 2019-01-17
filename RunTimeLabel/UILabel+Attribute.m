//
//  UILabel+Attribute.m
//  RunTimeLabel
//
//  Created by Mac on 2019/1/17.
//  Copyright © 2019年 Mac. All rights reserved.
//

#import "UILabel+Attribute.h"
#import "objc/Runtime.h"

@implementation UILabel (Attribute)

static  NSString * newFontKey = @"newFontKey";
static  NSString * newTextKey = @"newTextKey";

/*
 familyName 字体家族的名字
 fontName 字体的名字
 pointSize 字体大小
 ascender 基准线以上的高度
 descender 基准线以下的高度
 capHeight 大小的高度
 xHeight 小写x的高度
 lineHeight 当前字体下的行高
 leading 行间距（一般为0）
 */


#pragma mark - 使用runtime增加newFont属性
-(UIFont *)newFont{
    
    return objc_getAssociatedObject(self, &newFontKey);
}

- (void)setNewFont:(UIFont *)newFont{
    
    objc_setAssociatedObject(self, &newFontKey, newFont, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.font = [newFont fontWithSize:newFont.pointSize/2];
}

#pragma mark - 使用runtime增加newFont属性
- (NSString *)newText{
    // 利用runtime添加属性
    return objc_getAssociatedObject(self, &newTextKey);
}

-(void)setNewText:(NSString *)newText{
    // 利用runtime添加属性
    objc_setAssociatedObject(self, &newTextKey, newText, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    NSMutableString *str = [[NSMutableString alloc] initWithString:newText];
    NSInteger count = str.length;
    for (int i = 1; i < count; i ++) {
        [str insertString:@"\n" atIndex:i*2-1];
    }
    self.text = str;
    self.numberOfLines = 0;
}

@end
