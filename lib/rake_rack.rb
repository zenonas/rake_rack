$:.unshift File.dirname(__FILE__)

require 'rake'
require 'version'

dir = File.expand_path("../tasks", File.dirname(__FILE__))
Dir.glob("#{dir}/*.rake").each { |r| import r}
