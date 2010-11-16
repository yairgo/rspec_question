class Foo
  attr_accessor :name
  def initialize(*args)
    super
    self.name = 'foolish'
  end
end