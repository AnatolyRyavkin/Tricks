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

    ASProgrammerType programmerSenior = ASProgrammerTypeSenior;
    ASProgrammerType programmerMid = ASProgrammerTypeMid;
    ASProgrammerType programmerJunior = ASProgrammerTypeJunior;

    NSLog(@"%@",NSStringFromASProgrammerType(programmerMid));
    NSLog(@"%@",NSStringFromASProgrammerType(programmerJunior));
    NSLog(@"%@",NSStringFromASProgrammerType(programmerSenior));



}


@end
