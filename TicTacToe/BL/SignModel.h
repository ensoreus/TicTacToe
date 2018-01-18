//
//  SignModel.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Types.h"


@interface SignModel : NSObject
@property (nonatomic) SignTag signTag;
@property (nonatomic) BOOL isX;
@property (nonatomic, strong) NSString* signImagePath;

+ (SignModel*) modelForPlayer:(PlayRole)role;
@end
