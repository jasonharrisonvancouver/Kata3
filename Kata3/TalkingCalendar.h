//
//  TalkingCalendar.h
//  Kata3
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TalkingCalendar : NSObject

@property NSString *dateString;

- (instancetype)initWithDate:(NSString *)date;

- (NSString *)parse;


@end

NS_ASSUME_NONNULL_END
