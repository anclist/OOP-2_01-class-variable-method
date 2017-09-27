class Vampire
  @@coven = []

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = false
    @drank_blood_today = false
  end

  def name
    @name
  end

  def age
    @age
  end

  def in_coffin
    @in_coffin
  end

  def drank_blood_today
    @drank_blood_today
  end

  def name=(name)
    @name = name
  end

  def age=(age)
    @age = age
  end

  def self.coven
    @@coven
  end

  def in_coffin=(in_coffin)
    @in_coffin = in_coffin
  end

  def drank_blood_today=(drank_blood_today)
    @drank_blood_today = drank_blood_today
  end

  def self.create(name, age)
    new_vampire = Vampire.new(name, age)
    @@coven << new_vampire
    new_vampire
  end

  def drink_blood
    @drank_blood_today = true
  end

  def self.sunrise
    new_coven = []
    @@coven.each do |vampire|
      if vampire.in_coffin == true || vampire.drank_blood_today == true
        new_coven << vampire
      end
    end
    @@coven = new_coven
  end

  def self.sunset
    @drank_blood_today = false
    @in_coffin = false
  end

  def go_home
    @in_coffin = true
  end

end


Vampire.create("Morty", 107)
Vampire.create("Juan", 99)
Vampire.create("Mary", 33)
Vampire.create("Lola", 139)
p Vampire.coven
p "-------------------------"
Vampire.coven[0].drink_blood
Vampire.coven[1].go_home
p Vampire.coven
p "-------------------------"
Vampire.sunrise
p Vampire.coven
