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
        [self reset];
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

- (void) turnAsPlayer:(PlayRole)player toPos:(u_int8_t)turnPos{
    self.gamestate[turnPos] = [SignModel modelForPlayer:player];
}

- (void) reset{
    [self.gamestate removeAllObjects];
    for (u_int8_t i = 0; i < GAME_CELLS_COUNT; i++) {
        [self.gamestate addObject:[SignModel new]];
    }
}

- (NSArray<SignModel*>*) winLine:(WinLine)line{
    switch (line) {
        case wlTop:
            return [self topLine];
            break;
        case wlCenter:
            return [self middleLine];
            break;
        case wlBottom:
            return [self bottomLine];
            break;
        case wlSlash:
            return [self slashLine];
            break;
        case wlBackSlash:
            return [self backSlashLine];
            break;
        case wlRight:
            return [self rightColumn];
            break;
        case wlMiddle:
            return [self middleColumn];
            break;
        case wlLeft:
            return [self leftColumn];
        default:
            break;
    }
    return [self topLine];
}

- (NSArray<SignModel*>*) topLine{
    return [self.gamestate subarrayWithRange:NSMakeRange(0, 3)];
}

- (NSArray<SignModel*>*) middleLine{
    return [self.gamestate subarrayWithRange:NSMakeRange(3, 3)];
}

- (NSArray<SignModel*>*) bottomLine{
    return [self.gamestate subarrayWithRange:NSMakeRange(6, 3)];
}

- (NSArray<SignModel*>*) slashLine{
    NSMutableArray<SignModel*>* mLine = [[NSMutableArray alloc] initWithCapacity:3];
    [mLine addObject:self.gamestate[0]];
    [mLine addObject:self.gamestate[4]];
    [mLine addObject:self.gamestate[8]];
    return [mLine copy];
}

- (NSArray<SignModel*>*) backSlashLine{
    NSMutableArray<SignModel*>* mLine = [[NSMutableArray alloc] initWithCapacity:3];
    [mLine addObject:self.gamestate[2]];
    [mLine addObject:self.gamestate[4]];
    [mLine addObject:self.gamestate[6]];
    return [mLine copy];
}

- (NSArray<SignModel*>*) rightColumn{
    NSMutableArray<SignModel*>* mLine = [[NSMutableArray alloc] initWithCapacity:3];
    [mLine addObject:self.gamestate[2]];
    [mLine addObject:self.gamestate[5]];
    [mLine addObject:self.gamestate[8]];
    return [mLine copy];
}

- (NSArray<SignModel*>*) middleColumn{
    NSMutableArray<SignModel*>* mLine = [[NSMutableArray alloc] initWithCapacity:3];
    [mLine addObject:self.gamestate[1]];
    [mLine addObject:self.gamestate[4]];
    [mLine addObject:self.gamestate[7]];
    return [mLine copy];
}

- (NSArray<SignModel*>*) leftColumn{
    NSMutableArray<SignModel*>* mLine = [[NSMutableArray alloc] initWithCapacity:3];
    [mLine addObject:self.gamestate[0]];
    [mLine addObject:self.gamestate[3]];
    [mLine addObject:self.gamestate[6]];
    return [mLine copy];
}


@end
