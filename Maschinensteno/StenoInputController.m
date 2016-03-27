//
//  StenoInputController.m
//  Maschinensteno
//
//  Created by Sven Jerat2 on 25.03.16.
//  Copyright © 2016 Sven Jerat. All rights reserved.
//

#import "StenoInputController.h"
#import "AppDelegate.h"

@implementation StenoInputController

-(BOOL)handleEvent:(NSEvent *)event client:(id)sender
{
    BOOL inputHandled = YES;
    NSString* keyevent = @"testevent";

    if (!event.ARepeat) {
        switch (event.type) {
            case NSKeyUp:
                NSLog(@"Key Up Event -> keyCode = %hu", event.keyCode);
                [sender insertText:keyevent replacementRange:NSMakeRange(NSNotFound, NSNotFound)];
                break;
                
            case NSKeyDown:
                NSLog(@"Key Down Event -> keyCode = %hu", event.keyCode);
                [sender insertText:keyevent replacementRange:NSMakeRange(NSNotFound, NSNotFound)];
                break;
                
            default:
                break;
        }
    }

    return inputHandled;
}

@end