//
//  GameScene.m
//  Space Invaders
//
//  Created by Anton Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene
-(void)didMoveToView:(SKView *)view {
    
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"svemir1"];
    background.position = CGPointMake(0, 0);
    background.size = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+20);
    background.zPosition=0;
    [self addChild:background];
    
}

@end
