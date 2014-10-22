//
//  UIImage+UrlImage.m
//  minishows
//
//  Created by Francisco Caro Diaz on 22/10/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "UIImage+UrlImage.h"

@implementation UIImage (UrlImage)

+ (UIImage *)imageWithUrlString:(NSString *)urlImage{
    NSString *imageUrl = urlImage;
    NSURL *url = [NSURL URLWithString:imageUrl];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    UIImage *img = [UIImage imageWithData:data];
    return img;
}

+ (UIImage *)imageFromData:(NSString *)urlImageName{
    UIImage *img = [UIImage imageNamed:urlImageName];
    return img;
}

@end
