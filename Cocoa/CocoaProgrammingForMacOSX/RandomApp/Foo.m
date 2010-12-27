//
//  Foo.m
//  RandomApp
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Foo.h"


@implementation Foo

@synthesize textField;

- (IBAction) seed: (id) sender
{
    srandom(time(NULL));
    [textField setStringValue:@"Seed Generated"];
}

- (IBAction) generate: (id) sender
{
    int generated;
    generated = (random() % 100) + 1;
    
    [textField setIntValue:generated];
}

- (void) awakeFromNib
{
    NSCalendarDate *now;
    now = [NSCalendarDate calendarDate];
    [textField setObjectValue:now];
}

@end
