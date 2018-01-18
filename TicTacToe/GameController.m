//
//  GameController.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "GameController.h"
#import "GameModel.h"

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

@end
