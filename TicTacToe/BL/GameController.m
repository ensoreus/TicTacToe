//
//  GameController.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "GameController.h"
#import "GameModel.h"
#import "Types.h"
#import "SignModel.h"
#import "Constants.h"

@interface GameController()
@property (nonatomic) PlayRole nextPlayerMove;
@property (nonatomic) u_int8_t turnsCount;
@end

@implementation GameController

- (void) startGameWithBeginner:(PlayRole)playerRole{
    self.nextPlayerMove = playerRole;
    [self updateTurnHint];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:NO];
    [self.gameModel turnAsPlayer:self.nextPlayerMove toPos:indexPath.row];
    [self switchPlayer];
    self.turnsCount++;
    self.onUpdateGameField();
    GameResult gameResult = [self calculateGameStatusOnTurn];
    if (gameResult != grContinue){
        self.onVictory(gameResult);
    }
    [self updateTurnHint];
}
- (void) updateTurnHint{
    NSString* nextPlayerMoveTitle = self.nextPlayerMove == prX ? @"X's turn" : @"O's turn";
    self.onTurn(nextPlayerMoveTitle);
}

- (void) switchPlayer{
    if (self.nextPlayerMove == prX){
        self.nextPlayerMove = prO;
    }else{
        self.nextPlayerMove = prX;
    }
}

- (void) resetGame{
    self.turnsCount = 0;
    [self.gameModel reset];
}

//Search winner row by row
- (GameResult) calculateGameStatusOnTurn{
    GameResult result = grContinue;
    for (WinLine wl = wlTop; wl != wlMax; wl++) {
        NSArray<SignModel*>* line = [self.gameModel winLine:wl];
        PlayRole winner = [self lookForWinCombination:line];
        if(winner != prNone){
            result = (winner == prX) ? grXwon : grOwon;
        }
    }
    if (result == grContinue && _turnsCount == GAME_CELLS_COUNT){
        result = grDraw;
    }
    return result;
}

// Search winning combination in a row
- (PlayRole) lookForWinCombination:(NSArray<SignModel*>*) line{
    if ((line[0].signTag == Xsign) &&
        (line[1].signTag == Xsign) &&
        (line[2].signTag == Xsign)){
            return prX;
    }else if((line[0].signTag == Osign) &&
             (line[1].signTag == Osign) &&
             (line[2].signTag == Osign)){
        return prO;
    }
    return prNone;
}

@end
