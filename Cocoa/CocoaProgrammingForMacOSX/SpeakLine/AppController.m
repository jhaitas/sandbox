//
//  AppController.m
//  SpeakLine
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController

@synthesize textField,startButton,stopButton;

- (id) init
{
    if (![super init])
        return nil;
    
    NSLog(@"init");
    
    speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    [speechSynth setDelegate:self];
    return self;
}

- (IBAction) sayIt: (id) sender
{
    NSString *string = [textField stringValue];
    
    if ([string length] == 0) {
        NSLog(@"string from %@ is of zero-length",textField);
        return;
    }
    
    [speechSynth startSpeakingString:string];
    NSLog(@"Have started to say: %@",string);
    
    [startButton setEnabled:NO];
    [stopButton setEnabled:YES];
}

- (IBAction) stopIt: (id) sender
{
    NSLog(@"stopping");
    [speechSynth stopSpeaking];
}

- (void) speechSynthesizer: (NSSpeechSynthesizer *) sender
         didFinishSpeaking: (BOOL) complete
{
    NSLog(@"complete = %d",complete);
    [startButton setEnabled:YES];
    [stopButton setEnabled:NO];
}

@end
