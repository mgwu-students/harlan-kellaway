//
//  LevelOverPopup.m
//  harlankellaway
//
//  Created by Harlan Kellaway on 7/27/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "LevelOverPopup.h"
#import "GameState.h"

@implementation LevelOverPopup
{
    CCButton *_goToNextLevel;
    CCLayoutBox *_levelOverStatsBox;
    CCLabelTTF *_levelOverLabel;
    
    CCLabelTTF *_recirculateLabel;
    CCLabelTTF *_favoritesLabel;
    CCLabelTTF *_rankLabel;
    CCLabelTTF *_scoreLabel;
}


- (void)didLoadFromCCB
{
    self.visible = FALSE;
}

# pragma mark - Instance Methods

- (void)setVisible:(BOOL)visible
{
    if(visible)
    {
        // set content of Level Over node
        _levelOverLabel.string = [NSString stringWithFormat:@"Day %d Recap", [GameState sharedInstance].levelNum];
    }
    
    [super setVisible:visible];
}

# pragma mark - Instance Methods

- (void)setRecirculateLabel:(NSString *)labelText
{
    _recirculateLabel.string = labelText;
}

- (void)setFavoriteLabel:(NSString *)labelText
{
    _favoritesLabel.string = labelText;
}

# pragma  mark - Custom Methods

- (void)goToNextLevel
{
    CCLOG(@"goToNextLevel Pressed!");
    
    CCScene *scene = [CCBReader loadAsScene:@"LevelIntroScene"];
    [[CCDirector sharedDirector] replaceScene:scene];
}

@end
