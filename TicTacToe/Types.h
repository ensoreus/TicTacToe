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
    grOwon,
    grContinue
} GameResult;

typedef enum {
    prX,
    prO,
    prNone
} PlayRole;

typedef struct{
    u_int8_t x;
    u_int8_t y;
} TurnPos;

typedef enum {
    Osign,
    NoSign,
    Xsign
} SignTag;

#endif /* Types_h */
