//
//  GameState.h
//  harlankellaway
//
//  Created by Harlan Kellaway on 7/17/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameState : NSObject

+ (instancetype)sharedInstance;

@property (nonatomic, assign) NSInteger levelNum;
@property (nonatomic, strong) NSMutableArray *allTopics;
@property (nonatomic, strong) NSMutableArray *trendsToRecirculate;
@property (nonatomic, strong) NSMutableArray *trendsToFavorite;
@property (nonatomic, assign) double streamSpeed;
@property (nonatomic, assign) double meterScale;
@property (nonatomic, assign) NSInteger playerRank;
@property (nonatomic, assign) NSInteger playerScore;

@property (nonatomic, assign) BOOL isTutorialComplete;

@property (nonatomic, assign) double meterScaleOriginal;

- (void)clearLevelSettings;
- (void)clearGameState;

@end
