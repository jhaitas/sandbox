//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate> {
    NSTextField *textField;
    NSSpeechSynthesizer *speechSynth;
}

@property (assign) IBOutlet NSTextField *textField;

- (IBAction) sayIt: (id) sender;
- (IBAction) stopIt: (id) sender;

@end
