class Player

  DEFAULT_HP = 0

  attr_reader :name, :hp
  attr_writer :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end

end
