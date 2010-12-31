// ClickCatcher.m

#import "ClickCatcher.h"

@implementation ClickCatcher


- (id) init
{
    return [self initWithContentRect: [[NSScreen mainScreen] frame]
                           styleMask: NSBorderlessWindowMask
                             backing: NSBackingStoreBuffered
                               defer: NO];
}

- (id)initWithContentRect:(NSRect)contentRect
                styleMask:(NSUInteger)aStyle
                  backing:(NSBackingStoreType)bufferingType
                    defer:(BOOL)flag
{
    self = [super initWithContentRect: [[NSScreen mainScreen] frame]
                            styleMask: NSBorderlessWindowMask
                              backing: bufferingType
                                defer: flag];
    
    if (self)
    {
        [self setBackgroundColor:[NSColor colorWithCalibratedWhite:0.01 alpha:0.05]];
        [self setOpaque:NO];
    }
    
    // put on top of menu bar
    [self setLevel:NSMainMenuWindowLevel + 1];
    
    
    [self makeKeyAndOrderFront:nil];
    
    return self;
}


- (void)mouseDown:(NSEvent *)event
{
    NSPoint p = [event locationInWindow];
    
    NSLog(@"mouse click at %f,%f",p.x,p.y);
    
    [self generateMouseClick:p];
}

- (void) generateMouseClick: (NSPoint) point
{
    CGEventErr err = CGPostMouseEvent(point,FALSE,1,TRUE);
}

@end
