//
//  TalkingCalendar.m
//  Kata3
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "TalkingCalendar.h"

@implementation TalkingCalendar
- (instancetype)initWithDate:(NSString *)date{
    self = [super init];
    
    if(self){
        _dateString = date;
    }
    return self;
}

- (NSString *)parse{
    

    
    NSArray *dateParts = [_dateString componentsSeparatedByString:@"/"];
    
    NSMutableString *theDate = [[NSMutableString alloc] init];
    
    //NSLog(@"y m d are %@ %@ %@", dateParts[0], dateParts[1], dateParts[2]);

    
    if([dateParts[1] isEqualToString:@"01"]){
        [theDate appendString:@"January "];
    }else if([dateParts[1] isEqualToString:@"02"]){
        [theDate appendString:@"February "];
    }else if([dateParts[1] isEqualToString:@"03"]){
        [theDate appendString:@"March "];
    }else if([dateParts[1] isEqualToString:@"04"]){
        [theDate appendString:@"April "];
    }else if([dateParts[1] isEqualToString:@"05"]){
        [theDate appendString:@"May "];
    }else if([dateParts[1] isEqualToString:@"06"]){
        [theDate appendString:@"June "];
    }else if([dateParts[1] isEqualToString:@"07"]){
        [theDate appendString:@"July "];
    }else if([dateParts[1] isEqualToString:@"08"]){
        [theDate appendString:@"August "];
    }else if([dateParts[1] isEqualToString:@"09"]){
        [theDate appendString:@"September "];
    }else if([dateParts[1] isEqualToString:@"10"]){
        [theDate appendString:@"October "];
    }else if([dateParts[1] isEqualToString:@"11"]){
        [theDate appendString:@"November "];
    }else if([dateParts[1] isEqualToString:@"12"]){
        
        [theDate appendString:@"December "];
        
    }else{
        // error
    }
    
    

    
    NSString *firstCharacter = [NSString stringWithFormat:@"%c", [dateParts[2] characterAtIndex:0]];
    
    NSString *secondCharacter = [NSString stringWithFormat:@"%c", [dateParts[2] characterAtIndex:1]];
    
    if([firstCharacter isEqualToString:@"0"]){
        [theDate appendString:secondCharacter];
    }else{
        [theDate appendString:dateParts[2]];
    }
    
    
    if([dateParts[2] isEqualToString:@"11"]){
        [theDate appendString:@"th, "];
    }else if([dateParts[2] isEqualToString:@"12"]){
        [theDate appendString:@"th, "];
    }else if([secondCharacter isEqualToString:@"1"]){
        [theDate appendString:@"st, "];
    }else if([secondCharacter isEqualToString:@"2"]){
        [theDate appendString:@"nd, "];
    }else if([secondCharacter isEqualToString:@"3"]){
        [theDate appendString:@"rd, "];
    }else{
        [theDate appendString:@"th, "];
    }
    
    [theDate appendString:dateParts[0]];
    
   // NSLog(@"%@", theDate);
    
    return theDate;
}





@end
