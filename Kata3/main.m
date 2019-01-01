//
//  main.m
//  Kata3
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TalkingCalendar.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TalkingCalendar *calendar1 = [[TalkingCalendar alloc] initWithDate:@"2017/12/02"];
        NSLog(@"%@", [calendar1 parse]);
        TalkingCalendar *calendar2 = [[TalkingCalendar alloc] initWithDate:@"2007/11/11"];
        NSLog(@"%@", [calendar2 parse]);
        TalkingCalendar *calendar3 = [[TalkingCalendar alloc] initWithDate:@"1987/08/24"];
        NSLog(@"%@", [calendar3 parse]);
    }
    return 0;
}
