//
//  DockPrefs.m
//  DockManager
//
//  Created by John Haitas on 12/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "DockPrefs.h"


@implementation DockPrefs

- (void) resetDock
{
    NSString            *dockPrefsPlistFilename;
    NSArray             *appNames;
    NSMutableDictionary *dockPrefsPlist;
    
    // read dock prefs
    dockPrefsPlistFilename  = [NSHomeDirectory() stringByAppendingPathComponent:@"Library/Preferences/com.apple.dock.plist"];
    dockPrefsPlist          = [[NSMutableDictionary alloc] initWithContentsOfFile:dockPrefsPlistFilename];
    
    // set app names array
    appNames = [NSArray arrayWithObjects:  
                @"/Applications/Safari.app",
                @"/Applications/Mail.app",
                @"/Applications/Address Book.app",
                @"/Applications/Dictionary.app",
                @"/Applications/DVD Player.app",
                nil                                 ];
    
    // set persitent-apps array in dock prefs dictionary based on app names array
    [dockPrefsPlist setValue:[self persistentAppsForNames: appNames] forKey:@"persistent-apps"];
    
    // write dock prefs
    [dockPrefsPlist writeToFile:dockPrefsPlistFilename atomically:YES];   
    
    // restart dock
    [[NSTask launchedTaskWithLaunchPath:@"/usr/bin/killall" 
                              arguments:[NSArray arrayWithObjects:@"-HUP",@"Dock", nil]] waitUntilExit];
    
    [dockPrefsPlist release];
}

- (NSArray *) persistentAppsForNames: (NSArray *) appNames
{
    // generate persistent-apps array for dock preferences file
    NSMutableArray *persistentApps;
    persistentApps = [[[NSMutableArray alloc] init] autorelease];
    
    for (NSString *thisAppName in appNames) {
        [persistentApps addObject:[self dictForAppName:thisAppName]];
    }
    
    return [NSArray arrayWithArray:persistentApps];
}

- (NSDictionary *) dictForAppName: (NSString *) givenAppName
{
    // generate a dictionary for a given app name
    NSDictionary *fileData,*tileData;
    
    fileData = [NSDictionary dictionaryWithObjectsAndKeys:
                    givenAppName,               @"_CFURLString",
                    [NSNumber numberWithInt:0], @"_CFURLStringType",
                    nil                                                 ];
    
    tileData = [NSDictionary dictionaryWithObject:fileData forKey:@"file-data"];
    
    
    return [NSDictionary dictionaryWithObject:tileData forKey:@"tile-data"];
}

@end
