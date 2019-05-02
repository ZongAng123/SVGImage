//
//  UIImage+SVGManager.h
//  SVGDemoTest
//
//  Created by 纵昂 on 2019/5/1.
//  Copyright © 2019 纵昂. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
//③.SVGKit的使用.
//SVGKit的使用和UIImage的使用很像.可以简单封装一个分类.UIImage+SVGManager.h
@interface UIImage (SVGManager)
/**
 show svg image
 
 @param name svg name
 @param size image size
 @return svg image
 */
+ (UIImage *)svgImageNamed:(NSString *)name size:(CGSize)size;

//更新 对展示SVG的方法进行优化,增加修改颜色功能.
/**
 show svg image
 
 @param name svg name
 @param size image size
 @param tintColor image color
 @return svg image
 */
+ (UIImage *)svgImageNamed:(NSString *)name size:(CGSize)size tintColor:(UIColor *)tintColor;

@end

NS_ASSUME_NONNULL_END
