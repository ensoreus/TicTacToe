//
//  SignModel.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "SignModel.h"

#define IMG_BLANK  @"btn-background.png"
#define IMG_X_MARK @"x_mark.png"
#define IMG_O_MARK @"o_mark.png"

@implementation SignModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.signTag = NoSign;
        self.signImagePath = IMG_BLANK;
    }
    return self;
}

+ (SignModel*) modelForPlayer:(PlayRole)role{
    SignModel* model = [SignModel new];
    SignTag tag = (role == prX) ? Xsign : Osign;
    model.signTag = tag;
    model.signImagePath = (tag == Xsign) ? IMG_X_MARK : IMG_O_MARK;
    return model;
}

@end
