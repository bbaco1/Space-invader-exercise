//
//  GameScene.m
//  Space Invaders
//
//  Created by Anton Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "GameScene.h"
#import "EnemyShip.h"

@implementation GameScene
-(void)didMoveToView:(SKView *)view {
    
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"svemir1"];
    background.position = CGPointMake(0, 0);
    background.size = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+20);
    background.zPosition=0;
    [self addChild:background];
    [self addEnemyShips];
    
}

-(void)addEnemyShips {
    CGFloat width = self.size.width/2;
    for(CGFloat y = 100; y>-100; y-=80) {
        for(int x = -width + 10; x<width-10; x+= 80) {
            EnemyShip *enemy = [[EnemyShip alloc]initWithPosition:CGPointMake(x, y)];
            [self addChild:enemy];
        }
    }
 
}

@end
