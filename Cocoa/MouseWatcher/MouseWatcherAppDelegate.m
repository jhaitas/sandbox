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
    // get main screen size
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
    
    // get mouse location
    mouseLoc = [NSEvent mouseLocation];
    
    // update fields in HUD
    [blMouseXPos setFloatValue:mouseLoc.x];
    [blMouseYPos setFloatValue:mouseLoc.y];
    
    [tlMouseXPos setFloatValue:mouseLoc.x];
    [tlMouseYPos setFloatValue:(NSMaxY(theScreen) - mouseLoc.y)];

}

@end
