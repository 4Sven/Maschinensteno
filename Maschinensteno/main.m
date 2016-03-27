//
//  main.m
//  Maschinensteno
//
//  Created by Sven Jerat2 on 23.03.16.
//  Copyright © 2016 Sven Jerat. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <InputMethodKit/InputMethodKit.h>

const NSString* kConnectionName = @"StenoInputConnection";
IMKServer* server;

int main(int argc, const char * argv[]) {
    NSString* identifier;
    
    identifier = [[NSBundle mainBundle] bundleIdentifier];
    
    @autoreleasepool {

        server     = [[IMKServer alloc] initWithName:(NSString*)kConnectionName bundleIdentifier:[[NSBundle mainBundle] bundleIdentifier]];
        BOOL loadNib = [[NSBundle mainBundle] loadNibNamed:@"MainMenu" owner:[NSApplication sharedApplication] topLevelObjects:nil];
    
        if (loadNib) {
            NSLog(@"MainMenu geladen");
        } else {
            NSLog(@"MainMenu nicht geladen");
            return -1;
        }
    
        [[NSApplication sharedApplication] run];
    }
    
    return 0;
}
