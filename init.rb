require 'rubygems'
require 'sinatra'
require 'yaml'

configure do
  root = File.expand_path(File.dirname(__FILE__))
end

not_found do
  status 404
end

Dir["app/models/*.rb"].each{ |file| require file }

Dir["app/controllers/*.rb"].each{ |file| load file }
