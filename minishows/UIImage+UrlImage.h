//
//  UIImage+UrlImage.h
//  minishows
//
//  Created by Francisco Caro Diaz on 22/10/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UrlImage)

+ (UIImage *)imageWithUrlString:(NSString *)urlImage;

+ (UIImage *)imageFromData:(NSString *)urlImageName;

@end
