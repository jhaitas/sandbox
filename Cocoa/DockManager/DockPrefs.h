//
//  DockPrefs.h
//  DockManager
//
//  Created by John Haitas on 12/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface DockPrefs : NSObject {
}

- (void) resetDock;

- (NSArray *) persistentAppsForNames: (NSArray *) appNames;
- (NSDictionary *) dictForAppName: (NSString *) givenAppName;

@end
