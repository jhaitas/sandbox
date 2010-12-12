#import <Foundation/Foundation.h>
#import "DockPrefs.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    DockPrefs *dockPrefs = [[[DockPrefs alloc] init] autorelease];
    
    [dockPrefs resetDock];
    
    [pool drain];
    return 0;
}
