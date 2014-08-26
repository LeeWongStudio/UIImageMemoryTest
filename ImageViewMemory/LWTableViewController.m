//
//  LWTableViewController.m
//  ImageViewMemory
//
//  Created by 电魂 on 8/26/14.
//  Copyright (c) 2014 Alibaba.Inc. All rights reserved.
//

#import "LWTableViewController.h"
#import "LWViewController.h"

@interface LWTableViewController ()
@end

@implementation LWTableViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSIndexPath *indexPath =[self.tableView indexPathForCell:sender];
    LWViewController *vc = segue.destinationViewController;
    vc.index = indexPath.row;
}

@end
