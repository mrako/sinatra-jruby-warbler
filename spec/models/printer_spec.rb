require File.dirname(__FILE__) + '/../spec_helper'

describe Printer do
  
  it "should return a list of installed printers" do
    Java::Printer.stub!(:installed).and_return(["Test Printer"])
    
    Printer.installed.include?("Test Printer").should be true
  end
  
end