//
//  ClicTocAppDelegate.h
//  ClicToc
//
//  Created by John Haitas on 12/30/10.
//  Copyright 2010 J. Haitas, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ClickCatcher.h"

@interface ClicTocAppDelegate : NSObject <NSApplicationDelegate> {
    ClickCatcher *clickCatcher;
}

@property (assign) IBOutlet ClickCatcher *clickCatcher;

- (void) fullScreen;

@end
