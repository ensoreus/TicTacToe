//
//  ViewController.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "GameFieldViewController.h"
#import "GameModel.h"
#import "GameController.h"
#import "SignCell.h"
#import "TttPlayfieldLayout.h"

@interface GameFieldViewController ()
@property (nonatomic, strong) GameModel* gameModel;
@property (nonatomic, strong) GameController* gameController;
@end

@implementation GameFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.gameModel = [GameModel new];
    self.gameController = [GameController new];
    self.gameController.gameModel = self.gameModel;
    
    self.collectionView.delegate = self.gameController;
    self.collectionView.dataSource = self.gameModel;

    TttPlayfieldLayout* layout = [TttPlayfieldLayout new];
    layout.collectionViewFrame = self.collectionView.frame;
    self.collectionView.collectionViewLayout = layout;
    
    __block GameFieldViewController* weakSelf = self;
    self.gameController.onUpdateGameField = ^(){
        [weakSelf.collectionView reloadData];
    };
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    PlayRole firstMovePlayer = self.isXFirst ? prX : prO;
    [self.gameController startGameWithBeginner:firstMovePlayer];
}

- (void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.gameController resetGame];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
