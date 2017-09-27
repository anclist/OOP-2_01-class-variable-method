class Vampire
  @@coven = []

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = true
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

  def in_coffin=(in_coffin)
    @in_coffin = in_coffin
  end

  def drank_blood_today=(drank_blood_today)
    @drank_blood_today = drank_blood_today
  end

  def create
    new_vampire = Vampire.new(name, age)
    @@coven << new_vampire
    new_vampire
  end

  def drink_blood
    @drank_blood_today = true
  end

end
