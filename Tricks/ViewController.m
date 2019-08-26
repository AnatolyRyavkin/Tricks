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

-(IBAction)actionTest:(id) sender{
    AVSLog(@"action TEST");
}

-(void)insertConsoleView:(NSNotification*)notification{
    NSDictionary*dictionary = notification.userInfo;
    NSString*newString = [dictionary objectForKey:AVNotificationLogConsoleUserInfoKey];
    self.consoleView.text = [NSString stringWithFormat:@"%@ \n  %@", self.consoleView.text,newString];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(insertConsoleView:) name:AVNotificationLogConsole object:nil];

    [[NSNotificationCenter defaultCenter]addObserverForName:AVNotificationLogConsole object:nil queue:[NSOperationQueue mainQueue] usingBlock:^(NSNotification * _Nonnull note) {
        NSDictionary*dictionary = note.userInfo;
        NSString*newString = [dictionary objectForKey:AVNotificationLogConsoleUserInfoKey];
        self.consoleView.text = [NSString stringWithFormat:@"%@ \n  %@", self.consoleView.text,newString];
    }];

#ifdef PRODUCTION_BUILD
    
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

    AVSLog(@"%@",NSStringFromASProgrammerType(programmerMid));
    AVSLog(@"%@",NSStringFromASProgrammerType(programmerJunior));
    AVSLog(@"%@",NSStringFromASProgrammerType(programmerSenior));

    AVSLog(@"%@",APP_SHORT_NAME);

#else

    AVSLog(@"PRODUCTION_BUILD");

#endif

    UIColor*color = RGBA(26, 87, 178, 255);
    self.view.backgroundColor = color;

}

-(void)dealloc{

    [[NSNotificationCenter defaultCenter] removeObserver:self];

}

@end
