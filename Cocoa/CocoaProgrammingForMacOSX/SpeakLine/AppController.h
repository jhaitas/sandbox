//
//  AppController.h
//  SpeakLine
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppController : NSObject <NSSpeechSynthesizerDelegate> {
    NSSpeechSynthesizer *speechSynth;
    
    NSTextField *textField;
    NSButton    *stopButton;
    NSButton    *startButton;
}

@property (assign) IBOutlet NSTextField *textField;
@property (assign) IBOutlet NSButton    *stopButton;
@property (assign) IBOutlet NSButton    *startButton;

- (IBAction) sayIt: (id) sender;
- (IBAction) stopIt: (id) sender;

- (void) speechSynthesizer: (NSSpeechSynthesizer *) sender
         didFinishSpeaking: (BOOL) complete;
@end
