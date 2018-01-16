//
//  SignCell.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignModel.h"

@interface SignCell : UICollectionViewCell
@property (nonatomic, weak) SignModel* model;
@end
