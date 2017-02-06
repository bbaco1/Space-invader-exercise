//
//  GameScene.h
//  Space Invaders
//
//  Created by Anton Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "PlayerShip.h"

typedef NS_ENUM(NSUInteger, SideMovement) {
    MoveLeft,
    MoveRight
};

@interface GameScene : SKScene <SKPhysicsContactDelegate>

@property (strong, nonatomic) PlayerShip *playerShip;

@end
