//
//  IMKInputController_StenoInputController.h
//  Maschinensteno
//
//  Created by Sven Jerat2 on 25.03.16.
//  Copyright © 2016 Sven Jerat. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <InputMethodKit/InputMethodKit.h>

@interface StenoInputController : IMKInputController {
    
    NSMutableString*    _composedBuffer;
    NSMutableString*    _originalBuffer;
    NSInteger           _insertionIndex;
    BOOL                _didConvert;

}

-(BOOL)handleEvent:(NSEvent *)event client:(id)sender;
-(NSUInteger)recognizedEvents:(id)sender;

@end
