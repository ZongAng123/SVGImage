//
//  UIImage+SVGManager.m
//  SVGDemoTest
//
//  Created by 纵昂 on 2019/5/1.
//  Copyright © 2019 纵昂. All rights reserved.
//

#import "UIImage+SVGManager.h"
#import "SVGKImage.h"
@implementation UIImage (SVGManager)
+ (UIImage *)svgImageNamed:(NSString *)name size:(CGSize)size {
    SVGKImage *svgImage = [SVGKImage imageNamed:name];
    svgImage.size = size;
    return svgImage.UIImage;
//    然后你再使用svg图片的时候,使用它就可以进行展示.
}

//对展示SVG的方法进行优化,增加修改颜色功能
+ (UIImage *)svgImageNamed:(NSString *)name size:(CGSize)size tintColor:(UIColor *)tintColor {
    SVGKImage *svgImage = [SVGKImage imageNamed:name];
    svgImage.size = size;
    CGRect rect = CGRectMake(0, 0, svgImage.size.width, svgImage.size.height);
    CGImageAlphaInfo alphaInfo = CGImageGetAlphaInfo(svgImage.UIImage.CGImage);
    BOOL opaque = alphaInfo == kCGImageAlphaNoneSkipLast
    || alphaInfo == kCGImageAlphaNoneSkipFirst
    || alphaInfo == kCGImageAlphaNone;
    UIGraphicsBeginImageContextWithOptions(svgImage.size, opaque, svgImage.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextTranslateCTM(context, 0, svgImage.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextSetBlendMode(context, kCGBlendModeNormal);
    CGContextClipToMask(context, rect, svgImage.UIImage.CGImage);
    CGContextSetFillColorWithColor(context, tintColor.CGColor);
    CGContextFillRect(context, rect);
    UIImage *imageOut = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return imageOut;
}

@end
