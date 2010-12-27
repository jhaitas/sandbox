//
//  Foo.h
//  RandomApp
//
//  Created by John Haitas on 12/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface Foo : NSObject {
    NSTextField *textField;
}
@property (assign) IBOutlet NSTextField *textField;

- (IBAction) seed: (id) sender;
- (IBAction) generate: (id) sender;

@end
