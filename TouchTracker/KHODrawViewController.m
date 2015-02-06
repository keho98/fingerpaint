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

NSString * const kFinishedLinesData = @"finishedLinesData";
NSString * const kLinesInProgressData = @"linesInProgressData";

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadDataFromView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView
{
    self.view = [[KHODrawView alloc] initWithFrame:CGRectZero];
}

- (void)saveDataFromView
{
    NSMutableArray *finishedLines = [((KHODrawView *)self.view).finishedLines copy];
    NSData *finishedLinesData = [NSKeyedArchiver archivedDataWithRootObject:finishedLines];
    [[NSUserDefaults standardUserDefaults] setObject:finishedLinesData forKey:kFinishedLinesData];
    
    NSMutableDictionary *linesInProgress = [((KHODrawView *)self.view).linesInProgress copy];
    NSData *linesInProgressData = [NSKeyedArchiver archivedDataWithRootObject:linesInProgress];
    [[NSUserDefaults standardUserDefaults] setObject:linesInProgressData forKey:kLinesInProgressData];
}

- (void)loadDataFromView
{
    NSData *finishedLinesData = [[NSUserDefaults standardUserDefaults] objectForKey:kFinishedLinesData];
    ((KHODrawView *)self.view).finishedLines = [NSMutableArray arrayWithArray:[NSKeyedUnarchiver unarchiveObjectWithData:finishedLinesData]];
    
    NSData *linesInProgressData = [[NSUserDefaults standardUserDefaults] objectForKey:kLinesInProgressData];
    ((KHODrawView *)self.view).linesInProgress = [NSMutableDictionary dictionaryWithDictionary: [NSKeyedUnarchiver unarchiveObjectWithData:linesInProgressData]];
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
