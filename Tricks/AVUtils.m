//
//  AVUtils.m
//  Tricks
//
//  Created by Anatoly Ryavkin on 26/08/2019.
//  Copyright © 2019 AnatolyRyavkin. All rights reserved.
//

#import "AVUtils.h"

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

