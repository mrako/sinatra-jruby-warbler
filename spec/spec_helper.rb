require 'rubygems'
require 'sinatra'
require 'rack/test'

set :environment, :test

Dir["app/models/*.rb"].each{ |file| require file }
