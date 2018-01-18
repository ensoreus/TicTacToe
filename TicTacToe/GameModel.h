//
//  GameModel.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Types.h"

@interface GameModel : NSObject<UICollectionViewDataSource>
@property (nonatomic) BOOL isFirstMoveMadeX;
- (void) turnAsPlayer:(PlayRole)player toPos:(u_int8_t)turnPos;
- (void) reset;
@end
