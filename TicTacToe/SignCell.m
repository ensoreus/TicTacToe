//
//  SignCell.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "SignCell.h"
#import "SignModel.h"

@implementation SignCell

- (void) drawSign{
    [self.imgSign setImage:[UIImage imageNamed:self.model.signImagePath]];
}
@end
