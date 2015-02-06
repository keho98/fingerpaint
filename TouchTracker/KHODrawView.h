//
//  KHODrawView.h
//  TouchTracker
//
//  Created by Kevin Ho on 2/3/15.
//  Copyright (c) 2015 kho. All rights reserved.
//

@import UIKit;

@interface KHODrawView : UIView

@property (nonatomic, strong) NSMutableDictionary *linesInProgress;
@property (nonatomic, strong) NSMutableArray *finishedLines;

@end
