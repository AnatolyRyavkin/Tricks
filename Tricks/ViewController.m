//
//  ViewController.m
//  Tricks
//
//  Created by Anatoly Ryavkin on 26/08/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import "ViewController.h"
#import "AVUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",fancyDateStringFromDate([NSDate date]));

    if(iPad()){
        NSLog(@"This is iPad");
    }

    if(iPhone()){
        NSLog(@"This is iPhone");
    }

}


@end
