//
//  MouseWatcherAppDelegate.m
//  MouseWatcher
//
//  Created by John Haitas on 11/24/10.
//  Copyright 2010 Vanderbilt University. All rights reserved.
//

#import "MouseWatcherAppDelegate.h"

@implementation MouseWatcherAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    theScreen = [[NSScreen mainScreen] frame];
    
    
    // start a timer to update coords every millisecond
    [NSTimer scheduledTimerWithTimeInterval:.001
                                     target:self
                                   selector:@selector(updateCoords:)
                                   userInfo:nil
                                    repeats:YES];
}

- (void) updateCoords: (NSTimer *) theTimer
{
    NSPoint mouseLoc; 
    
    mouseLoc = [NSEvent mouseLocation];
    
    [blMouseXPos setFloatValue:mouseLoc.x];
    [blMouseYPos setFloatValue:mouseLoc.y];
    
    [tlMouseXPos setFloatValue:mouseLoc.x];
    [tlMouseYPos setFloatValue:(theScreen.size.height - mouseLoc.y)];

}

@end
