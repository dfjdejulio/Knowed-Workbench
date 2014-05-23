//
//  KWScriptCommand.m
//  Knowed Workbench
//
//  Created by Doug DeJulio on 5/22/14.
//  Copyright (c) 2014 Doug DeJulio. All rights reserved.
//

#import "KWScriptCommand.h"

@implementation KWScriptCommand

- (id) performDefaultImplementation
{
    NSLog(@"Event: %@", self.appleEvent);
    NSLog(@"Arguments: %@", self.arguments);
    return nil;
}

@end
