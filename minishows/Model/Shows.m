//
//  Shows.m
//  minishows
//
//  Created by Francisco Caro Diaz on 22/10/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Shows.h"

@implementation Shows

- (NSMutableArray *) allShows{
    return self.showList;
}


// lazy instantiation getter
- (NSMutableArray *)spriteList{
    if(_showList == nil){
        _showList = [[NSMutableArray alloc] init];
        [self createShowList];
    }
    return _showList;
}

- (void) createShowList{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"showList" ofType:@"plist"];
    
    NSArray *userList = [NSArray arrayWithContentsOfFile:filePath];
    
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    for (NSDictionary *d in userList) {
        Show *s = [[Show alloc] init];
        
        //NSDictionary *position = [d objectForKey:@"position"];
        //CGFloat x = [[position objectForKey:@"x"] intValue];
        //s.position = CGRectMake(x,y, width, height);
        s.name = [d objectForKey:@"name"];
        s.episode  = [d objectForKey:@"episode"];
        s.generalInfo  = [d objectForKey:@"generalInfo"];
        s.overview = [d objectForKey:@"overview"];
        s.urlImage  = [d objectForKey:@"urlImage"];
        s.watched  = NO;
        
        [result addObject:s];
    }
    
    [self setShowList:result];
}

@end
