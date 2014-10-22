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
    self.title = @"S01E01 - Winter Is Coming";
    self.currentShowImage.image = [UIImage imageNamed:@"eddard"];
    //NSLog(@"view did load");
    ShowDetailsContainerViewController *container = [self.childViewControllers lastObject];
    container.generalInfoLabel.text = @"Set on the fictional continents of Westeros and Essos at the end of a decade-long summer, interweaves several plot lines. The first follows the members of several noble houses in a civil war for the Iron Throne of the Seven Kingdoms; the second covers the rising threat of the impending winter and the mythical creatures of the North; the third chronicles the attempts of the exiled last scion of the realm's deposed dynasty to reclaim the throne. Through its morally ambiguous characters, the series explores issues of social hierarchy, religion, loyalty, corruption, civil war, crime, and punishment.";
    
    container.overviewInfoLabel.text = @"Robert Baratheon, King of the Seven Kingdoms of Westeros, and his wife, Cersei Lannister, travel north to make his old friend Eddard 'Ned' Stark – Lord of the North and of the castle Winterfell – an offer he cannot refuse. Across the narrow sea in Essos, the exiled Prince Viserys Targaryen forges a new alliance to regain the Iron Throne; he will trade his sister Daenerys in marriage to the savage Dothraki warlord Khal Drogo in exchange for Drogo's army. Back in Winterfell, Ned's 10-year-old son Brandon discovers that Queen Cersei and her brother Jaime are involved in an incestuous relationship, a discovery for which he pays dearly.";
    
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
