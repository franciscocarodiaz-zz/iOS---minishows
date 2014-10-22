//
//  Shows.h
//  minishows
//
//  Created by Francisco Caro Diaz on 22/10/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Show.h"

@interface Shows : Show

@property (nonatomic, strong) NSMutableArray *showList;

- (NSMutableArray *) allShows;

@end
