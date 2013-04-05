# Coco2d-x example with GHUnit for iOS

## setup

    $ git clone <this repogitory>
    $ cd cocos2dx-ios-ghunit

## Targets

There are 2 targets.

* cocos2dx-ios
* GHUnit

## how to build

### close Xcode if it is opened

### export TEST_SERVER_URL

check you IP address

    $ export TEST_SERVER_URL=http://<you IP address>:9876

for example (IP address is 192.168.1.106)

    $ export TEST_SERVER_URL=http://192.168.1.106:9876

### open Xcode

use 'open' command to open Xcode with TEST_SERVER_URL enabled.

    $ open cocos2dx-ios.xcodeproj


## how to run

### test http server

    $ GHUnit/server.rb

### run

choose target, and run

If it succeed, you can see messages like shown below in Debug Area:

    Http Test, dump data: Hello. The time is 2013-04-05 12:36:08 +0900


## Help!

Now GHUnit always fails.

It seems not to call callback for response. Please help me....

