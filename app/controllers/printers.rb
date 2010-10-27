require "rubygems"
require "json"

get '/' do
  content_type :json
  
  Printer.installed.to_json
end
