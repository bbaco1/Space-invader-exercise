//
//  GameScene.m
//  Space Invaders
//
//  Created by Anton Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "GameScene.h"
#import "EnemyShip.h"
#import "Explosion.h"



@implementation GameScene

- (void)didMoveToView:(SKView *)view {
    self.physicsWorld.contactDelegate = self;
    self.physicsWorld.gravity = CGVectorMake(0, -2.0);
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
            enemy.name = @"enemyShip";
            [self addChild:enemy];
        }
    }
}

- (void)addPlayerShip {
    self.playerShip = [[PlayerShip alloc] initWithPosition:CGPointMake(0, -250)];
    [self addChild:self.playerShip];
}

- (void)didBeginContact:(SKPhysicsContact *)contact {
    EnemyShip *node1 = (EnemyShip *) contact.bodyA.node;
    Bullet *node2 = (Bullet *) contact.bodyB.node;
    if([node1.name isEqualToString:@"enemyShip"]) {
        [node1 destroy];
        [Explosion initWithPosition:contact.contactPoint secene:self];
        
    }
    if([node2.name isEqualToString:@"bullet"]) {
        [node2 destroy];
        [Explosion initWithPosition:contact.contactPoint secene:self];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchLocation = [touch locationInNode:self];
    if (touchLocation.x < self.playerShip.position.x) {
        [self moveObject:self.playerShip side:MoveLeft];
    } else {
        [self moveObject:self.playerShip side:MoveRight];
    }
}

- (void)moveObject:(SKSpriteNode *)object side:(SideMovement)side {
    CGFloat pointX;
    if (side == MoveLeft) {
        pointX = object.position.x - 10;
    } else if (side == MoveRight) {
        pointX = object.position.x + 10;
    }
    SKAction *moveAction = [SKAction moveToX:pointX duration:0.1];
    [object runAction:moveAction];
}


@end
