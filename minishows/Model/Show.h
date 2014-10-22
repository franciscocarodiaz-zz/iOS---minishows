//
//  Show.h
//  minishows
//
//  Created by Francisco Caro Diaz on 21/10/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface Show : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *episode;
@property (nonatomic) BOOL watched;
@property (nonatomic, strong) NSString *generalInfo;
@property (nonatomic, strong) NSString *overview;
@property (nonatomic, strong) NSString *urlImage;

- (void) prettyPrint;
+(Show *)showWithName:(NSString *)name;
+(Show *)show;

- (instancetype)initWithName:(NSString *)name;
- (instancetype)initWithName:(NSString *)name andEpisode:(NSString *)episode;
- (instancetype)initWithName:(NSString *)name andEpisode:(NSString *)episode andGeneralInfo:(NSString *)generalInfo;
- (instancetype)initWithName:(NSString *)name andEpisode:(NSString *)episode andGeneralInfo:(NSString *)generalInfo andOverview:(NSString *)overview andUrlImage:(NSString *)urlImage;

@end
