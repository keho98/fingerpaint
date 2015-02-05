//
//  KHODrawViewController.m
//  TouchTracker
//
//  Created by Kevin Ho on 2/3/15.
//  Copyright (c) 2015 kho. All rights reserved.
//

#import "KHODrawViewController.h"
#import "KHODrawView.h"

@interface KHODrawViewController ()

@end

@implementation KHODrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    self.view = [[KHODrawView alloc] initWithFrame:CGRectZero];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
