require 'spec_helper'

describe Foo do
  describe 'situation 1' do
    before do
      puts "--#{Bar.new.name}---"
      foo_mock = mock
      foo_mock.stub(:name){'foo mock'}
      Foo.should_receive(:new){foo_mock}
      puts "foo_mock --#{Foo.new.name}--"
      bar_mock = mock
      bar_mock.stub(:name){'bar mock'}
      Bar.should_receive(:new){bar_mock}
      puts "bar_mock --#{Bar.new.name}"
    end
    it { true.should == true }
  end
  describe 'situation 2' do
    before do
      puts "after --#{Bar.new.name}--"    
    end
    it { true.should == true }
  end
end
