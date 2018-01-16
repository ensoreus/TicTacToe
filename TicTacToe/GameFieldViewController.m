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

@interface GameFieldViewController ()
@property (nonatomic, strong) GameModel* gameModel;
@property (nonatomic, strong) GameController* gameController;
@property (nonatomic, weak) UICollectionView* collectionView;
@end

@implementation GameFieldViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView = (UICollectionView*) self.view;
    self.collectionView.delegate = self.gameController;
    self.collectionView.dataSource = self.gameModel;
    [self.collectionView registerClass:SignCell.class forCellWithReuseIdentifier:@"signCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
