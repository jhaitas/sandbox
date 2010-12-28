//
//  MWHUDController.h
//  MouseWatcher
//
//  Created by John Haitas on 11/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MWHUDController : NSWindowController {
    NSRect  theScreen;
    
    IBOutlet NSPanel        *mouseCoordsHUD;
    
    IBOutlet NSTextField    *tlMouseXPos;
    IBOutlet NSTextField    *tlMouseYPos;
    IBOutlet NSTextField    *blMouseXPos;
    IBOutlet NSTextField    *blMouseYPos;
}

- (void) updateCoords: (NSTimer *) theTimer;

@end
