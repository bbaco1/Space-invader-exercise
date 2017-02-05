//
//  BaseShip.m
//  Space Invaders
//
//  Created by Anton Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "BaseShip.h"

@implementation BaseShip

- (id)initWithPosition:(CGPoint)position {
    self = [super init];
    if (self) {
//        self.position = position;
//        self.size = CGSizeMake(50, 25);
//        self.texture = [SKTexture textureWithImageNamed:@"tanjur"];
        self.zPosition = 1;
    }
    return self;
}

@end
