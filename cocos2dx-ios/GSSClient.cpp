//
//  GSSClient.cpp
//  cocos2dx-ios
//
//  Created by  on 13/04/04.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#include <iostream>
#include "HttpClient.h"
#include "GSSClient.h"

using namespace cocos2d;
using namespace cocos2d::extension;


GSSClient::GSSClient()
{
};

GSSClient::~GSSClient()
{
};

void GSSClient::run()
{
    CCHttpRequest* request = new CCHttpRequest();
    request->setUrl("http://192.168.1.106:9876"); // TODO change this to your IP
    
    request->setRequestType(CCHttpRequest::kHttpGet);
    request->setResponseCallback(this, callfuncND_selector(GSSClient::onHttpRequestCompleted));
    request->setTag("GET test1");

    printf("now sending a request\n");
    
    CCHttpClient::getInstance()->send(request);
    
    printf("now sent a request\n");
    
    request->release();
};

void GSSClient::onHttpRequestCompleted(cocos2d::CCNode *sender, void *data)
{
    printf("onHttpRequestCompleted called!\n");
    
    CCHttpResponse *response = (CCHttpResponse*)data;
    
    // dump data
    std::vector<char> *buffer = response->getResponseData();
    printf("Http Test, dump data: ");
    for (unsigned int i = 0; i < buffer->size(); i++)
    {
        printf("%c", (*buffer)[i]);
    }
    printf("\n");
    
    afterHttpRequestCompleted(buffer);    
};


void GSSClient::afterHttpRequestCompleted(std::vector<char>* buffer)
{
    
}
