//
//  BaseShip.m
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import "BaseShip.h"

@implementation BaseShip

- (instancetype)init {
    self = [super init];
    if (self) {
        [self setTexture:[SKTexture textureWithImage:[UIImage imageNamed:@"Ship"]]];
    }
    return self;
}

@end
