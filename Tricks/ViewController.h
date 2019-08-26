//
//  ViewController.h
//  Tricks
//
//  Created by Anatoly Ryavkin on 26/08/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak,nonatomic) IBOutlet UITextView*consoleView;
-(IBAction)actionTest:(id) sender;

-(void)insertConsoleView: (NSDictionary*) dictionary;

@end

