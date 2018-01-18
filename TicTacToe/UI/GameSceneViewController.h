//
//  GameSceneViewController.h
//  TicTacToe
//
//  Created by Philipp Maluta on 19.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GameSceneViewController : UIViewController
@property(nonatomic, weak) IBOutlet UILabel* lbNextPlayerTurnHint;
@property(nonatomic) BOOL isXFirst;
@end
