//
//  KWController.m
//  Knowed Workbench
//
//  Created by Doug DeJulio on 4/16/14.
//  Copyright (c) 2014 AISB. All rights reserved.
//

#import "KWController.h"

@implementation KWController

- (IBAction)execute:(id)sender
{
    JSValue *retval = [context evaluateScript: [sender stringValue]];
    [self.retView setStringValue: [retval toString]];
    [self.consoleView setString: console.contents];
}

- (id) init
{
    self = [super init];
    context = [JSContext new];
    console = [KnowedBufferConsole new];
    [console addSelfToContext:context];
    KnowedUtil *util = [KnowedUtil new];
    util->outBlock = ^(NSString *msg) {
        NSAlert *alert = [NSAlert new];
        alert.alertStyle = NSInformationalAlertStyle;
        alert.messageText = msg;
        [alert runModal];
    };
    util->inBlock = ^(NSString *msg) {
        NSAlert *prompt = [NSAlert new];
        NSTextField *input = [[NSTextField alloc] initWithFrame:NSMakeRect(0, 0, 160, 24)];
        prompt.alertStyle = NSInformationalAlertStyle;
        prompt.messageText = msg;
        prompt.accessoryView = input;
        [prompt runModal];
        return input.stringValue;
    };
    [util addSelfToContext:context];
    return self;
}

@end
