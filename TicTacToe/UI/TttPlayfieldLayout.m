//
//  TttPlayfieldLayout.m
//  TicTacToe
//
//  Created by Philipp Maluta on 17.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "TttPlayfieldLayout.h"
#import "Constants.h"

@interface TttPlayfieldLayout()
@property (nonatomic, strong) NSMutableArray<__kindof UICollectionViewLayoutAttributes *> *preparedLayoutAttributes;
@end

@implementation TttPlayfieldLayout{
    CGFloat _contentWidth;
    CGFloat _contentHeight;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.preparedLayoutAttributes = [[NSMutableArray alloc]initWithCapacity:GAME_COLUMNS_COUNT];
    }
    return self;
}

- (void) prepareLayout{
    CGFloat _cellWidth;
    CGFloat _cellHeight;
    CGFloat _xOffset;
    CGFloat _yOffset;
    
    _contentWidth  = _collectionViewFrame.size.width;// * 0.9f;
    _contentHeight = _collectionViewFrame.size.width;// * 0.9f;
    
    _xOffset = 0;//_collectionViewFrame.size.width / 2 - _contentWidth / 2;
    _yOffset = 0;//_collectionViewFrame.size.height / 2 - _contentHeight / 2;
    
    _cellHeight = _cellWidth = _contentWidth / GAME_COLUMNS_COUNT;
    
    u_int8_t count = 0;
    for (u_int8_t j = 0; j < GAME_ROWS_COUNT; j++) {
        for (u_int8_t i = 0; i < GAME_COLUMNS_COUNT; i++){
            NSIndexPath* indexPath = [NSIndexPath indexPathForRow:count++ inSection:0];
            UICollectionViewLayoutAttributes* attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
            attr.frame = CGRectMake(_xOffset + i * _cellWidth, _yOffset + j * _cellHeight, _cellWidth, _cellHeight);
            [self.preparedLayoutAttributes addObject:attr];
        }
    }
}

- (CGSize)collectionViewContentSize{
    return CGSizeMake(_contentWidth, _contentHeight);
}

- (NSArray<__kindof UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    NSMutableArray* cellAttributesInRect = [[NSMutableArray alloc] initWithCapacity:GAME_CELLS_COUNT];
    for (UICollectionViewLayoutAttributes *cellAttr in self.preparedLayoutAttributes) {
        if (CGRectContainsRect(rect, cellAttr.frame)){
            [cellAttributesInRect addObject:cellAttr];
        }
    }
    return [cellAttributesInRect copy];
}
@end
