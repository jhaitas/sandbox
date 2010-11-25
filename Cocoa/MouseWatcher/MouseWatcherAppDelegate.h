//
//  MouseWatcherAppDelegate.h
//  MouseWatcher
//
//  Created by John Haitas on 11/24/10.
//  Copyright 2010 Vanderbilt University. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MouseWatcherAppDelegate : NSObject <NSApplicationDelegate> {
    NSRect  theScreen;
    
    IBOutlet NSPanel        *mouseCoordsHUD;
    IBOutlet NSTextField    *tlMouseXPos;
    IBOutlet NSTextField    *tlMouseYPos;
    IBOutlet NSTextField    *blMouseXPos;
    IBOutlet NSTextField    *blMouseYPos;
}

- (void) updateCoords: (NSTimer *) theTimer;

@end
