//
//  GameModel.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Types.h"

typedef enum {
  wlTop = 0,
  wlCenter,
  wlBottom,
  wlSlash,
  wlBackSlash,
  wlRight,
  wlMiddle,
  wlLeft,
  wlMax
} WinLine;

@class SignModel;

@interface GameModel : NSObject<UICollectionViewDataSource>
- (void) turnAsPlayer:(PlayRole)player toPos:(u_int8_t)turnPos;
- (void) reset;
- (NSArray<SignModel*>*) winLine:(WinLine)line;


@end
