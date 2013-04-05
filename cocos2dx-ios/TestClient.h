//
//  TestClient.h
//  cocos2dx-ios
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#ifndef cocos2dx_ios_TestClient_h
#define cocos2dx_ios_TestClient_h

#include "cocos2d.h"

class TestClient : public cocos2d::CCObject
{
public:
    
    TestClient();
    virtual ~TestClient();
    
    void run();    
    
    void onHttpRequestCompleted(cocos2d::CCNode *sender, void *data);
    
    virtual void afterHttpRequestCompleted(std::vector<char>* buffer);
};


#endif
