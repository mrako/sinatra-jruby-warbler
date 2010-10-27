require File.dirname(__FILE__) + '/../spec_helper'

require 'init'

describe "printers" do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  it "should return the list of installed printers" do
    Printer.should_receive(:installed).and_return(["Test Printer"])
    
    get "/"
    
    result = JSON.parse(last_response.body)
    result.should == ["Test Printer"]
  end
end
