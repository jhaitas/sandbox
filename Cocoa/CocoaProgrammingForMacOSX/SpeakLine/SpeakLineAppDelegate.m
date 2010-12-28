//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

@synthesize textField;

- (id) init
{
    if (![super init])
        return nil;
    
    NSLog(@"init");
    
    speechSynth = [[NSSpeechSynthesizer alloc] init];
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
}

- (IBAction) stopIt: (id) sender
{
    NSLog(@"stopping");
    [speechSynth stopSpeaking];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

@end
