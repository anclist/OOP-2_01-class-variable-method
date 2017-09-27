class Zombie
  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def initialize(speed, strength)
    if speed > @@max_speed
      @speed = @@max_speed
    else
      @speed = speed
    end

    if strength > @@max_strength
      @strength = @@max_strength
    else
      @strength = strength
    end
  end

  def speed
    @speed
  end

  def strength
    @strength
  end

  def speed=(speed)
    @speed = speed
  end

  def strength=(strength)
    @strength = strength
  end

  def encounter
      if outrun_zombie? == true
        "You escaped"
      elsif survive_attack? == false
        "You died"
      else
        my_self = Zombie.new(rand(@@max_speed) + 1, rand(@@max_strength) + 1, )
        @@horde << my_self
        "You're now a Zombie"
      end
  end

  def outrun_zombie?
    my_speed = rand(@@max_speed) + 1
    if my_speed > @speed
      true
    else
      false
    end
  end

  def survive_attack?
    my_strength = rand(@@max_strength) + 1
    if my_strength > @strength
      true
    else
      false
    end
  end

  def self.all
    @@horde
  end

  def self.new_day
    Zombie.spawn
    Zombie.some_die_off
    Zombie.increase_plague_level
    Zombie.spawn
  end

  def self.some_die_off
    rand(@@horde.length).times do
      @@horde.delete_at(rand(@@horde.length))
    end
  end

  def self.spawn
    (rand(@@plague_level)+1).times do |zombie|
      zombie = Zombie.new(rand(@@max_speed) + 1, rand(@@max_strength) + 1, )
      @@horde << zombie
      zombie
    end
  end

  def self.increase_plague_level
    @@plague_level -= rand(3)
  end

end



Zombie.spawn
puts Zombie.all.inspect

puts "-----------------------"

Zombie.new_day
puts Zombie.all.inspect
fighting_zombie = Zombie.all[rand(Zombie.all.length)]
puts fighting_zombie.encounter
