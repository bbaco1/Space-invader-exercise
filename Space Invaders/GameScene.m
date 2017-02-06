//
//  GameScene.m
//  Space Invaders
//
//  Created by Anton Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "GameScene.h"
#import "EnemyShip.h"
#import "PlayerShip.h"

@implementation GameScene

- (void)didMoveToView:(SKView *)view {
    self.physicsWorld.contactDelegate = self;
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"svemir1"];
    background.position = CGPointMake(0, 0);
    background.size = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+20);
    background.zPosition = 0;
    [self addChild:background];
    [self addEnemyShips];
    [self addPlayerShip];
}

- (void)addEnemyShips {
    CGFloat width = self.size.width/2;
    for(CGFloat y = 100; y>-100; y-=80) {
        for(int x = -width + 10; x<width-10; x+= 80) {
            EnemyShip *enemy = [[EnemyShip alloc] initWithPosition:CGPointMake(x, y)];
            [self addChild:enemy];
        }
    }
}

- (void)addPlayerShip {
    PlayerShip *playerShip = [[PlayerShip alloc] initWithPosition:CGPointMake(0, -250)];
    [self addChild:playerShip];
}

- (void)didBeginContact:(SKPhysicsContact *)contact {
    SKNode *node1 = contact.bodyA.node;
    SKNode *node2 = contact.bodyB.node;
    if([node1.name isEqualToString:@"bullet"]) {
        [node1 removeFromParent];
        node1 = nil;
    } else if([node2.name isEqualToString:@"bullet"]) {
        [node2 removeFromParent];
        node2 = nil;
    }

}

@end
