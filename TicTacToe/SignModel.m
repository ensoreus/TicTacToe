//
//  SignModel.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "SignModel.h"

@implementation SignModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.signTag = NoSign;
        self.signImagePath = @"btn-background.png";
    }
    return self;
}
@end
