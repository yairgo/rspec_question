class FooBar
  attr_accessor :bars  
  def initialize(*args)
    super
    self.bars = [Bar.new, Foo.new]
  end
  
  def bars_bar
    self.bars.each { |x| puts x.class }
    self.bars.detect{ |x| x.class == Bar }
  end
end