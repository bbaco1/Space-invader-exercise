//
//  PlayerShip.m
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "PlayerShip.h"

@implementation PlayerShip

- (instancetype)initWithPosition:(CGPoint)position {
    self = [super init];
    if (self) {
        self.size = CGSizeMake(50, 50);
        self.position = position;
        
        UIImage *shipImage = [UIImage imageNamed:@"tanjur"];
        [self setTexture:[SKTexture textureWithImage:shipImage]];
    }
    return self;
}

@end
