class Bar < Foo
  attr_accessor :bars  
  def initialize(*args)
    super
    self.name = 'barish'
    self.bars = [Bar.new, Foo.new]
  end
  
end