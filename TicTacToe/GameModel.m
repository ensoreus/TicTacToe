//
//  GameModel.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "GameModel.h"
#import "SignModel.h"
#import "SignCell.h"
#import "Constants.h"

@interface GameModel()
@property (nonatomic, strong) NSMutableArray<SignModel*>* gamestate;
@end

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gamestate = [[NSMutableArray alloc] initWithCapacity:GAME_CELLS_COUNT];
        for (u_int8_t i = 0; i < GAME_CELLS_COUNT; i++) {
            [self.gamestate addObject:[SignModel new]];
        }
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return GAME_CELLS_COUNT;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SignCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"SignCell" forIndexPath:indexPath];
    cell.model = self.gamestate[indexPath.row];
    [cell drawSign];
    return cell;
}

@end
