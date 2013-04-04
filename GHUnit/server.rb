#!/usr/bin/env ruby

# You have to install rack
# $ gem install rack
require 'rack'

my_rack_proc = lambda { |env| [200, {"Content-Type" => "text/plain"}, ["Hello. The time is #{Time.now}"]] }

Signal.trap(:INT){ exit!(1) }

Rack::Handler::WEBrick.run my_rack_proc, Port: 9876
