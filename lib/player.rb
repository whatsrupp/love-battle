class Player
  attr_reader :named
  attr_writer :named

  def initialize(name)
    @named = name
  end
end
