//
//  ViewController.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameFieldViewController : UICollectionViewController
@property(nonatomic) BOOL isXFirst;
@property(nonatomic, weak) UILabel* nextPlayerTurnHint;
@end

