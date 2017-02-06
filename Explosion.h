//
//  Explosion.h
//  Space Invaders
//
//  Created by Anton Orzes on 06/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>

@interface Explosion : NSObject

+ (id)initWithPosition:(CGPoint)position secene:(SKScene *)scene;

@end
