//
//  SignModel.h
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    NoSign,
    Xsign,
    Osign
} SignTag;

@interface SignModel : NSObject
@property (nonatomic) SignTag signTag;
@property (nonatomic, strong) NSString* signImagePath;
@end
