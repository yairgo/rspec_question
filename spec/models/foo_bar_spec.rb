require 'spec_helper'

describe FooBar do
  describe 'situation 1' do
    before do
      
      @foo_mock = mock
      @foo_mock.stub(:name){'foo mock'}
      Foo.should_receive(:new){@foo_mock}
      @bar_mock = mock
      @bar_mock.stub(:name){'bar mock'}
      Bar.should_receive(:new){@bar_mock}
      @test_object = FooBar.new
    end
    it { @test_object.bars.should be_include(@foo_mock) }
    it { @test_object.bars.should be_include(@bar_mock) }
  end
  describe 'situation 2' do
    it { Bar.new.name.should == 'barish' }
  end
end
