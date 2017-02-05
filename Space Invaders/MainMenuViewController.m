//
//  MainMenuViewController.m
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "MainMenuViewController.h"

@interface MainMenuViewController ()

@end

@implementation MainMenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.highScoreLabel setText:[NSString stringWithFormat:@"%@", [LocalPlayer sharedPlayer].highScore]];
}

@end
