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

@interface GameController()
@property (nonatomic) PlayRole nextPlayerMove;
@end

@implementation GameController

- (void) startGameWithBeginner:(PlayRole)playerRole{
    self.nextPlayerMove = playerRole;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    [collectionView deselectItemAtIndexPath:indexPath animated:NO];
    [self.gameModel turnAsPlayer:self.nextPlayerMove toPos:indexPath.row];
    [self switchPlayer];
    self.onUpdateGameField();
}

- (void) switchPlayer{
    if (self.nextPlayerMove == prX){
        self.nextPlayerMove = prO;
    }else{
        self.nextPlayerMove = prX;
    }
}

- (void) resetGame{
    [self.gameModel reset];
}

- (PlayRole) calculateGameStatus{
    for (WinLine wl = wlTop; wl != wlMax; wl++) {
        NSArray<SignModel*>* line = [self.gameModel winLine:wl];
        PlayRole winner = [self lookForWinCombination:line];
        if(winner != prNone){
            return winner;
        }
    }
    return prNone;
}

- (PlayRole) lookForWinCombination:(NSArray<SignModel*>*) line{
    
}

@end
