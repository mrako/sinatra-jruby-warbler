require File.dirname(__FILE__) + '/../spec_helper'

describe Printer do
  
  it "should return a list of installed printers" do
    Printer.installed.should_not be nil
  end
  
end