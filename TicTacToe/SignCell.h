//
//  SignCell.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SignModel;

@interface SignCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgSign;
@property (nonatomic, weak) SignModel* model;
- (void) drawSign;
@end
