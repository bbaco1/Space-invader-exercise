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
        self.zPosition = 1;
    }
    return self;
}

- (void)destroyed {
    [self removeFromParent];
}

@end
