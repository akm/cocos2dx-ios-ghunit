//
//  GSSClientAsyncTest.m
//  cocos2dx-ios
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "GSSClientAsyncTest.h"

@implementation GSSClientAsyncTest
- (void)testSuccess {
    // Prepare for asynchronous call
    [self prepare];
    
    // Do asynchronous task here
    [self performSelector:@selector(_succeed) withObject:nil afterDelay:0.1];
    
    // Wait for notify
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:1.0];
}

- (void)_succeed {
    // Notify the wait. Notice the forSelector points to the test above. 
    // This is so that stray notifies don't error or falsely succeed other tests.
    // To ignore the check, forSelector can be NULL.
    [self notify:kGHUnitWaitStatusSuccess forSelector:@selector(testSuccess)];
}

@end
