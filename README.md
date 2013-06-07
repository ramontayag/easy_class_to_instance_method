# EasyClassToInstanceMethod

As long as there is an instance method on your class, then this will create a class method for it for easy calling. Makes this:

    Something.new(1, 2).execute

Into:

    Something.execute(1, 2)

## Installation

Add this line to your application's Gemfile:

    gem 'easy_class_to_instance_method'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install easy_class_to_instance_method

In a class:

    class MyClass
      easy_class_to_instance

      def initialize(a, b)
        @a = a
        @b = b
      end

      def my_action
        puts "#{@a}, #{@b}"
      end
    end

Call it:

    MyClass.my_action('Hello', 'there')

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Contributors

- [Nestor Pestelos](https://github.com/ngpestelos)
- [Marc Ignacio](https://github.com/padi)
