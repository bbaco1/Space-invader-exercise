//
//  EnemyShip.m
//  Space Invaders
//
//  Created by Anton Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "EnemyShip.h"

@implementation EnemyShip

- (id)initWithPosition:(CGPoint)position {
    self = [super initWithPosition:position];
    if (self) {
        self.position = position;
        self.size = CGSizeMake(50, 25);
        self.texture = [SKTexture textureWithImageNamed:@"tanjur"];
        self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.size];
        self.physicsBody.affectedByGravity = NO;
        self.physicsBody.categoryBitMask = 2;
        self.physicsBody.contactTestBitMask = 1;
        self.physicsBody.collisionBitMask = 0;
        [self runAction:[SKAction repeatActionForever:
                         [SKAction sequence:@[[SKAction moveBy:CGVectorMake(50, 0) duration:1.0],
                                              [SKAction moveBy:CGVectorMake(-50, 0) duration:1.0]]]]];
        
    }
    return self;
}

@end
