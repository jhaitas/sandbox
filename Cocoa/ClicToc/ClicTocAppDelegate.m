//
//  ClicTocAppDelegate.m
//  ClicToc
//
//  Created by John Haitas on 12/30/10.
//  Copyright 2010 J. Haitas, LLC. All rights reserved.
//

#import "ClicTocAppDelegate.h"

@implementation ClicTocAppDelegate

@synthesize clickCatcher;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self fullScreen];
}

- (void) fullScreen
{
    // Put up a new window
    clickCatcher = [[ClickCatcher alloc] init];
}


- (void)mouseDown:(NSEvent *)event
{
    NSPoint p = [event locationInWindow];
    
    NSLog(@"mouse click at %f,%f",p.x,p.y);
}

@end
