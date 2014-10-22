//
//  ShowDetailsViewController.m
//  minishows
//
//  Created by Kyle on 10/22/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "ShowDetailsViewController.h"
#import "Show.h"
#import "ShowDetailsContainerViewController.h"

@interface ShowDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *currentShowImage;

@property (strong, nonatomic) Show *show;

@end




@implementation ShowDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"S01E02 - Winter Is Coming";
    //NSLog(@"view did load");
    ShowDetailsContainerViewController *container = [self.childViewControllers lastObject];
    container.generalInfoLabel.text = @"tessssst";
    
    //[self.childViewControllers lastObject]
}


//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([[segue identifier] isEqualToString:@"infoPanel"]) {
//        ShowDetailsContainerViewController *vc = [segue destinationViewController];
//        vc.generalInfoLabel.text = @"test";
//        NSLog(@"if is true");
//    }
//}

@end
