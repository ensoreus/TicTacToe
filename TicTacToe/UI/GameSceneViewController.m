//
//  GameSceneViewController.m
//  TicTacToe
//
//  Created by Philipp Maluta on 19.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "GameSceneViewController.h"
#import "GameFieldViewController.h"

@interface GameSceneViewController ()
@end

@implementation GameSceneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"embedGameField"]){
        GameFieldViewController* gfvc = (GameFieldViewController*)segue.destinationViewController;
        gfvc.isXFirst = self.isXFirst;
        gfvc.nextPlayerTurnHint = self.lbNextPlayerTurnHint;
    }
}


@end
