//
//  LocalPlayer.h
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocalPlayer : NSObject

+ (instancetype)localUser;

@property (strong, nonatomic) NSNumber *highScore;

- (void)saveUserData;

@end
