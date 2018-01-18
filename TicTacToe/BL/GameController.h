//
//  GameController.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Types.h"
@class GameModel;

@interface GameController : NSObject<UICollectionViewDelegate>
@property(nonatomic, copy) void (^onUpdateGameField)(void);
@property(nonatomic, copy) void (^onVictory)(GameResult result);
@property(nonatomic, weak) GameModel* gameModel;
- (void) startGameWithBeginner:(PlayRole)playerRole;
- (void) resetGame;
@end
