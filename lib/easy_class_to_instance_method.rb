require 'active_support/concern'
require 'easy_class_to_instance_method/version'
require 'easy_class_to_instance_method/core_ext/extends_class'

module EasyClassToInstanceMethod
  extend ActiveSupport::Concern

  module ClassMethods
    def method_missing(method_name, *args, &block)
      if method_exists?(method_name)
        self.new(*args).send(method_name, &block)
      else
        super
      end
    end

    private

    def method_exists?(method_name)
      intersection = self.instance_methods & [method_name.to_s, method_name.to_sym]
      intersection.any?
    end
  end

end
