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

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

  end

  def self.all
    @@horde
  end

  def self.new_day
# This class method represents the events of yet another day of the zombie apocalypse.
# Every day some zombies die off (phew!), some new ones show up, and sometimes
# the zombie plague level increases. In order to accomplish this, new_day should
# call some_die_off, spawn, and increase_plague_level.
  end

  def self.some_die_off

  end

  def self.spawn
    (rand(@@plague_level)+1).times do |zombie|
      zombie = Zombie.new(rand(@@max_speed) + 1, rand(@@max_strength) + 1, )
      @@horde << zombie
    end
  end

  def self.increase_plague_level

  end

end


# Zombie.spawn
# Zombie.all
