//
//  Bullet.m
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet

- (id)initWithPosition:(CGPoint)position {
    self = [super init];
    if (self) {
        self.size = CGSizeMake(5, 15);
        self.position = position;
        UIImage *bulletImage = [UIImage imageNamed:@"bullet"];
        [self setTexture:[SKTexture textureWithImage:bulletImage]];
        self.name = @"bullet";
        self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:self.size];
        self.physicsBody.affectedByGravity = NO;
        self.physicsBody.categoryBitMask = 1;
        self.physicsBody.contactTestBitMask = 2;
        self.physicsBody.collisionBitMask = 0;
        [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(moveUp) userInfo:nil repeats:YES];
        self.zPosition = 2;
    }
    return self;
}

- (void)moveUp {
    CGFloat y = self.position.y+5;
    self.position = CGPointMake(self.position.x, y);
}

@end
