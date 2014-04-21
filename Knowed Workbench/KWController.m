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
    [console addSelfToContext: context];
    return self;
}

@end
