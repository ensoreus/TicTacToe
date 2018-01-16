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

@interface GameModel()
@property (nonatomic, strong) NSMutableArray<SignModel*>* gamestate;
@end

@implementation GameModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.gamestate = [[NSMutableArray alloc] initWithCapacity:9];
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 9;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    SignCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"signCell" forIndexPath:indexPath];
    cell.model = self.gamestate[indexPath.row];
    
    return cell;
}

@end
