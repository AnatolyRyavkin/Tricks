//
//  AVUtils.h
//  Tricks
//
//  Created by Anatoly Ryavkin on 26/08/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString* const AVNotificationLogConsole;
extern NSString* const AVNotificationLogConsoleUserInfoKey;


#define APP_SHORT_NAME @"MACRO"

#define PRODUCTION_BUILD

#define RGBA(r,g,b,a) [UIColor colorWithRed: r/255.f green: g/255.f blue: b/255.f alpha: a/255.f]

typedef enum{
    ASProgrammerTypeJunior,
    ASProgrammerTypeMid,
    ASProgrammerTypeSenior
}ASProgrammerType;

NSString* fancyDateStringFromDate(NSDate*date);

BOOL iPad(void);
BOOL iPhone(void);

NSString*NSStringFromASProgrammerType(ASProgrammerType programmerType);

void AVSLog(NSString*format, ...);


