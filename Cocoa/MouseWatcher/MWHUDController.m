//
//  MWHUDController.m
//  MouseWatcher
//
//  Created by John Haitas on 11/25/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MWHUDController.h"


@implementation MWHUDController

- (id) init {
    if (self = [super init]) {
        // get main screen size
        theScreen = [[NSScreen mainScreen] frame];


        // start a timer to update coords every 10 milliseconds
        [NSTimer scheduledTimerWithTimeInterval:.01
                                         target:self
                                       selector:@selector(updateCoords:)
                                       userInfo:nil
                                        repeats:YES];
    }
    return self;
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
