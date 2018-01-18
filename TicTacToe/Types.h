//
//  Types.h
//  TicTacToe
//
//  Created by Philipp Maluta on 17.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#ifndef Types_h
#define Types_h

typedef enum {
    grDraw,
    grXwon,
    grOwon
} GameResult;

typedef enum {
    prX,
    pbO
} PlayRole;

typedef struct{
    u_int8_t x;
    u_int8_t y;
} TurnPos;

#endif /* Types_h */
