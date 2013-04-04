//
//  GSSClientAsyncTest.m
//  cocos2dx-ios
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "GSSClientAsyncTest.h"

#include "GSSClient.h"


class TestGSSClient : public GSSClient
{
    private:
    GSSClientAsyncTest* fTest;
    
    public:
    TestGSSClient(GSSClientAsyncTest* test);
    
    virtual void afterHttpRequestCompleted(std::vector<char>* buffer);
};

TestGSSClient::TestGSSClient(GSSClientAsyncTest* test){
    fTest = test;
}


void TestGSSClient::afterHttpRequestCompleted(std::vector<char>* buffer)
{
    [fTest _succeed];    
}







@implementation GSSClientAsyncTest
- (void)testSuccess {
    // Prepare for asynchronous call
    [self prepare];
    
    // Do asynchronous task here
    [self performSelector:@selector(_start) withObject:nil afterDelay:0.1];

    // Wait for notify
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:5.0];
}

- (void)_start {
    TestGSSClient* client = new TestGSSClient(self);
    client->run();
}

- (void)_succeed {
    // Notify the wait. Notice the forSelector points to the test above. 
    // This is so that stray notifies don't error or falsely succeed other tests.
    // To ignore the check, forSelector can be NULL.
    [self notify:kGHUnitWaitStatusSuccess forSelector:@selector(testSuccess)];
}

@end
