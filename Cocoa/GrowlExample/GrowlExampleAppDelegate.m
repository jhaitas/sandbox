//
//  GrowlExampleAppDelegate.m
//  GrowlExample
//
//  Created by John Haitas on 12/26/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "GrowlExampleAppDelegate.h"

@implementation GrowlExampleAppDelegate

- (void)awakeFromNib {
	NSBundle *myBundle = [NSBundle bundleForClass:[GrowlExampleAppDelegate class]];
	NSString *growlPath = [[myBundle privateFrameworksPath] stringByAppendingPathComponent:@"Growl.framework"];
	NSBundle *growlBundle = [NSBundle bundleWithPath:growlPath];
    
	if (growlBundle && [growlBundle load]) {
		// Register ourselves as a Growl delegate
		[GrowlApplicationBridge setGrowlDelegate:self];
        
		[GrowlApplicationBridge notifyWithTitle:@"Alert"
									description:@"Hello!"
							   notificationName:@"Example"
									   iconData:nil
									   priority:0
									   isSticky:NO
								   clickContext:[NSDate date]];
	}
	else {
		NSLog(@"ERROR: Could not load Growl.framework");
	}
}

@end
