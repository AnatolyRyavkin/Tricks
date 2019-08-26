//
//  AVUtils.m
//  Tricks
//
//  Created by Anatoly Ryavkin on 26/08/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import "AVUtils.h"



//NSString* const  AVNotificationLog = @"AVNotificationLog";
//NSString* const AVNotificationLogUserInfoKey = @"AVNotificationLogUserInfoKey";

NSString* const AVNotificationLogConsole = @"AVNotificationLogConsole";
NSString* const AVNotificationLogConsoleUserInfoKey = @"AVNotificationLogConsoleUserInfoKey";

NSString* fancyDateStringFromDate(NSDate*date){

    static NSDateFormatter*formater = nil;

    if(!formater){
        formater = [[NSDateFormatter alloc]init];
        formater.dateFormat = @" -- dd : MM : yyyy --";
    }
    return [formater stringFromDate:date];
}

BOOL iPad(){
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad);
}

BOOL iPhone(){
    return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone);
}

NSString*NSStringFromASProgrammerType(ASProgrammerType programmerType){
    switch (programmerType) {
        case ASProgrammerTypeJunior:
            return @"Hi is a junior";
        case ASProgrammerTypeMid:
            return @"Hi is a mid";
        case ASProgrammerTypeSenior:
            NSLog(@"Hi is a senior - very math programmer");
            return @"senior";
        default:
            break;
    }
}

void AVSLog(NSString*format, ...){

#ifdef PRODUCTION_BUILD

    #if LOG_ENABLE

        va_list argumentList;
            va_start(argumentList,format);
            NSLogv(format, argumentList);
        va_end(argumentList);
    
    #endif

    NSString* log = [[NSString alloc] initWithFormat:format arguments:argumentList];

    //NSString* const AVNotificationLog = @"AVNotificationLog";
    //NSString* const AVNotificationLogKey = @"AVNotificationLogKey";

    NSDictionary*dictionary = [[NSDictionary alloc]initWithObjectsAndKeys:
                               log,AVNotificationLogConsoleUserInfoKey,
                               nil];

    [[NSNotificationCenter defaultCenter] postNotificationName: AVNotificationLogConsole object:nil userInfo:dictionary];


#endif 

}


