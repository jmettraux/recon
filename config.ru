
require 'pp'
require 'sinatra'

$: << 'lib'


configure do

  #set :show_exceptions, false

  #set :port, SGENV == 'test' ? 9291 : 9292
    # seems Webrick doesn't care... Or Sinatra doesn't tell

  set :root, File.dirname(__FILE__)

  #set :static, true
  #set :public_folder, File.exist?('public') ? 'public' : '.'
end

require 'server.rb'

run Sinatra::Application

