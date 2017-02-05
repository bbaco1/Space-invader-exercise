//
//  LocalPlayer.m
//  Space Invaders
//
//  Created by Milorad Orzes on 05/02/2017.
//  Copyright © 2017 Milorad Orzes. All rights reserved.
//

#define kSavedPlayerData @"playerData"
#import "LocalPlayer.h"

@implementation LocalPlayer

+ (instancetype)sharedPlayer {
    static dispatch_once_t token;
    static LocalPlayer *localPlayer = nil;
    
    dispatch_once(&token, ^{
        localPlayer = [[LocalPlayer alloc] init];
    });
    return localPlayer;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.highScore = [[NSUserDefaults standardUserDefaults] objectForKey:kSavedPlayerData];
        if (!self.highScore) {
            self.highScore = @(0);
        }
    }
    return self;
}

- (void)saveUserData {
    [[NSUserDefaults standardUserDefaults] setObject:self.highScore forKey:kSavedPlayerData];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
