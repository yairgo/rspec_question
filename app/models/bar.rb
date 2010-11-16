class Bar < Foo
  attr_accessor :bars  
  def initialize(*args)
    super
    self.name = 'barish'
  end
end