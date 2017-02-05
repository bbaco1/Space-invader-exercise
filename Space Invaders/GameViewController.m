//
//  GameViewController.m
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@interface GameViewController ()
{
     SKScene *gameScene;
}
@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    // Create and configure the scene.
    gameScene = [GameScene nodeWithFileNamed:@"MyScene"];
    gameScene.scaleMode = SKSceneScaleModeAspectFill;
    //ovo treba za velicinu
    gameScene.size=skView.bounds.size;
    // Present the scene.
    [skView presentScene:gameScene];
    
}

@end
