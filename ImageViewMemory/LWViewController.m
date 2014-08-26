//
//  LWViewController.m
//  ImageViewMemory
//
//  Created by 电魂 on 8/26/14.
//  Copyright (c) 2014 Alibaba.Inc. All rights reserved.
//

#import "LWViewController.h"

@interface LWViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation LWViewController

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (self.index == 0){
        [self animateImageView1:@(0)];
    }else if (self.index == 1){
        [self animateImageView2:@(0)];
    }else{
        self.imageView.image = [UIImage imageNamed:@"14.jpg"];
    }
}

- (void)animateImageView1:(NSNumber *)count{
    if ([count integerValue] == 15){
        return ;
    }
    [self.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg", count]]];
    [self performSelector:@selector(animateImageView1:) withObject:@([count integerValue]+1) afterDelay:0.2];
}

- (void)animateImageView2:(NSNumber *)count{
    if ([count integerValue] == 15){
        return ;
    }
    NSString *path = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",count] ofType:@"jpg"];
    UIImage *img = [UIImage imageWithContentsOfFile:path];
    [self.imageView setImage:img];
    [self performSelector:@selector(animateImageView2:) withObject:@([count integerValue]+1) afterDelay:0.2];
}

@end
