//
//  SignCell.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "SignCell.h"
#import <ReactiveObjC/ReactiveObjC.h>

@implementation SignCell
- (instancetype)init
{
    self = [super init];
    if (self) {
        [RACObserve(self, model) subscribeNext:^(SignModel* model){
            
        }];
    }
    return self;
}
@end
