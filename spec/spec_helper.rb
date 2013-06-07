SPEC_DIR = File.dirname(__FILE__)

require 'rspec'
require 'easy_class_to_instance_method'

Dir[File.join(SPEC_DIR, 'support', '**', '*.rb')].each {|f| require f}
