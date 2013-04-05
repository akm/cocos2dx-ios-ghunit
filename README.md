
# Coco2d-x example with GHUnit for iOS

## setup

    $ git clone <this repogitory>
    $ cd cocos2dx-ios-ghunit

## Targets

There are 2 targets.

* cocos2dx-ios
* GHUnit

## how to build

### add a macro

For each targets, set a macro in [Build Settings]-[Apple LLVM compiler x.0 - Preprocessing]-[Preprocessor Macros] like this:

    SERVER_URL=\"http://192.168.1.106:9876\"


## how to run

### test http server

    $ GHUnit/server.rb

### run

choose target, and run

If it succeed, you can see messages in Debug Area:

    Http Test, dump data: Hello. The time is 2013-04-05 12:36:08 +0900


## Help!

Now GHUnit always fails.

It seems not to be called callback for response. Please help me....

