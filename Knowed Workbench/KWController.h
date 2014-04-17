//
//  KWController.h
//  Knowed Workbench
//
//  Created by Doug DeJulio on 4/16/14.
//  Copyright (c) 2014 AISB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Knowed/Knowed.h>
#import <JavaScriptCore/JavaScriptCore.h>

@interface KWController : NSObject {
    JSContext *context;
    KnowedBufferConsole *console;
}

@property NSTextView IBOutlet *consoleView;

@property NSTextField IBOutlet *retView;

- (IBAction) execute:(id)sender;

@end
