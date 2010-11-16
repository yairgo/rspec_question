class FooBar
  attr_accessor :bars  
  def initialize(*args)
    super
    self.bars = [Bar.new, Foo.new]
  end
  
end