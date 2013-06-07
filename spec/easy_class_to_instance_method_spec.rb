require 'spec_helper'

class SomeClass
  easy_class_to_instance

  def initialize(a, b)
    @a = a
    @b = b
  end

  def foo
  end
end

describe EasyClassToInstanceMethod do

  it 'should delegate missing class methods to instance methods, passing any arguments' do
    class_instance = double
    SomeClass.stub(:new).with('hi', 'there').and_return(class_instance)
    class_instance.should_receive(:foo) { 'result' }
    SomeClass.foo('hi', 'there').should == 'result'
  end

end
