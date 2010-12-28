//
//  CharacterCounterAppDelegate.h
//  CharacterCounter
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CharacterCounterAppDelegate : NSObject <NSApplicationDelegate> {
    NSTextField *inputString;
    NSTextField *outputString;
}

@property (assign) IBOutlet NSTextField *inputString;
@property (assign) IBOutlet NSTextField *outputString;

- (IBAction) countCharacters: (id) sender;

@end
