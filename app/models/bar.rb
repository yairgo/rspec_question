class Bar < Foo
  def initialize(*args)
    super
    self.name = 'barish'
  end
end