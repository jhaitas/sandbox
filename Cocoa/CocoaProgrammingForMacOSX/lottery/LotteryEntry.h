//
//  LotteryEntry.h
//  lottery
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface LotteryEntry : NSObject {
    NSCalendarDate *entryDate;
    
    int firstNumber;
    int secondNumber;
}

- (id) init;
- (id) initWithEntryDate: (NSCalendarDate *) theDate;

- (void) setEntryDate: (NSCalendarDate *) date;
- (NSCalendarDate *) entryDate;
- (int) firstNumber;
- (int) secondNumber;


@end
