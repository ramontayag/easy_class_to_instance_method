module EasyClassToInstanceMethod
  module CoreExt
    module ExtendsClass

      def self.included(base)
        base.class_eval do
          def easy_class_to_instance
            include EasyClassToInstanceMethod
          end
        end
      end

    end
  end
end

Class.send :include, EasyClassToInstanceMethod::CoreExt::ExtendsClass
