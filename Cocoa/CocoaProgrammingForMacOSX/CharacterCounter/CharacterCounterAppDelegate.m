//
//  CharacterCounterAppDelegate.m
//  CharacterCounter
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "CharacterCounterAppDelegate.h"

@implementation CharacterCounterAppDelegate

@synthesize inputString,outputString;

- (IBAction) countCharacters: (id) sender
{
    NSString *string = [inputString stringValue];
    [outputString setStringValue: [NSString stringWithFormat:@"'%@' has %d characters.",string,[string length]]];
}

@end
