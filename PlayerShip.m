//
//  PlayerShip.m
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "PlayerShip.h"
#import "Bullet.h"

@implementation PlayerShip

- (id)initWithPosition:(CGPoint)position {
    self = [super initWithPosition:position];
    if (self) {
        self.size = CGSizeMake(50, 50);
        self.position = position;
        UIImage *shipImage = [UIImage imageNamed:@"MaliSbGo"];
        [self setTexture:[SKTexture textureWithImage:shipImage]];
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    Bullet *bull = [[Bullet alloc] initWithPosition:self.position];
    [self.parent.scene addChild:bull];
}

@end
