//
//  MainMenuViewController.h
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
#import "LocalPlayer.h"


@interface MainMenuViewController : BaseViewController
@property (weak, nonatomic) IBOutlet UILabel *highScoreLabel;

@end
