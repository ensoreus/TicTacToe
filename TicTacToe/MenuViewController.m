//
//  MenuViewController.m
//  TicTacToe
//
//  Created by Philipp Maluta on 16.01.18.
//  Copyright © 2018 com.ensoreus. All rights reserved.
//

#import "MenuViewController.h"
#import "GameFieldViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

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
    
    if ([segue.identifier isEqualToString:@"XplaySegue"]) {
        GameFieldViewController* gameViewController = (GameFieldViewController*)segue.destinationViewController;
        gameViewController.isXFirst = YES;
    }else if ([segue.identifier isEqualToString:@"OplaySegue"]) {
        GameFieldViewController* gameViewController = (GameFieldViewController*)segue.destinationViewController;
        gameViewController.isXFirst = NO;
    }
}

@end
