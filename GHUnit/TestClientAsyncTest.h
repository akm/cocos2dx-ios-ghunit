//
//  TestClientAsyncTest.h
//  cocos2dx-ios
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>

@interface TestClientAsyncTest : GHAsyncTestCase{
@private
    NSTimer *scheduleTimer_;
}

- (void)_succeed;
@end
