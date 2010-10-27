require "java"
require "lib/printer.jar"

class Printer

  def self.installed
    installed = Java::Printer.findPrinters
  end
  
end
