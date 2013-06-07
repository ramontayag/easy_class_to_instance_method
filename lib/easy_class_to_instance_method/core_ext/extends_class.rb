module EasyClassToInstanceMethod
  module CoreExt
    module ExtendsClass

      extend ActiveSupport::Concern

      included do
        def easy_class_to_instance
          include EasyClassToInstanceMethod
        end
      end

    end
  end
end

Class.send :include, EasyClassToInstanceMethod::CoreExt::ExtendsClass
