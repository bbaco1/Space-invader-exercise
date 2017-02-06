//
//  Explosion.m
//  Space Invaders
//
//  Created by Anton Orzes on 06/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "Explosion.h"

@implementation Explosion
+ (id)initWithPosition:(CGPoint)position secene:(SKScene *)scene
{
        for (int i=0; i<20; i++) {
            float kut = M_PI/10 * (float)i;
            UIImage *pImage = [UIImage imageNamed:@"particle"];
            SKSpriteNode *particle = [[SKSpriteNode alloc]initWithTexture:[SKTexture textureWithImage:pImage]];
            particle.position = CGPointMake(position.x + cos(kut)*10, position.y + sin(kut)*10);
            float sz = arc4random_uniform(10)+1;
            particle.size = CGSizeMake(sz, sz);
            particle.zPosition = 2;
            particle.physicsBody = [SKPhysicsBody bodyWithCircleOfRadius:2.5];
            particle.physicsBody.dynamic = YES;
            particle.physicsBody.categoryBitMask = 0;
            particle.physicsBody.contactTestBitMask = 0;
            particle.physicsBody.collisionBitMask = 0;
            [scene addChild:particle];
            CGFloat k = (CGFloat)(arc4random()%5)/15;
            [particle.physicsBody applyImpulse:CGVectorMake(cos(kut)*k, sin(kut)*k)];
            [particle.physicsBody applyAngularImpulse:10.0];
        }
    
    return self;
}
@end
